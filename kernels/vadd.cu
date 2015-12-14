// filename: vadd.cu
// simple CUDA kernel to add 2 vectors

extern "C"
{
  __global__ void vadd(const float *a, const float *b, float *c)
  {
    int i= threadIdx.x + blockIdx.x * blockDim.x;
    c[i]=a[i]+b[i];
  }
}
