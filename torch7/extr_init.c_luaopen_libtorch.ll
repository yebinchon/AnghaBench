; ModuleID = '/home/carl/AnghaBench/torch7/extr_init.c_luaopen_libtorch.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_init.c_luaopen_libtorch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"torch\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"torch.Allocator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaopen_libtorch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_newtable(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_pushvalue(i32* %5, i32 -1)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_setglobal(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @torch_utils_init(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @torch_File_init(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @torch_ByteStorage_init(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @torch_CharStorage_init(i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @torch_ShortStorage_init(i32* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @torch_IntStorage_init(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @torch_LongStorage_init(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @torch_FloatStorage_init(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @torch_DoubleStorage_init(i32* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @torch_HalfStorage_init(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @torch_ByteTensor_init(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @torch_CharTensor_init(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @torch_ShortTensor_init(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @torch_IntTensor_init(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @torch_LongTensor_init(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @torch_FloatTensor_init(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @torch_DoubleTensor_init(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @torch_HalfTensor_init(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @torch_ByteTensorOperator_init(i32* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @torch_CharTensorOperator_init(i32* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @torch_ShortTensorOperator_init(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @torch_IntTensorOperator_init(i32* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @torch_LongTensorOperator_init(i32* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @torch_FloatTensorOperator_init(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @torch_DoubleTensorOperator_init(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @torch_Timer_init(i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @torch_DiskFile_init(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @torch_PipeFile_init(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @torch_MemoryFile_init(i32* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @torch_TensorMath_init(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @torch_random_init(i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @luaT_newmetatable(i32* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  ret i32 1
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i32 @torch_utils_init(i32*) #1

declare dso_local i32 @torch_File_init(i32*) #1

declare dso_local i32 @torch_ByteStorage_init(i32*) #1

declare dso_local i32 @torch_CharStorage_init(i32*) #1

declare dso_local i32 @torch_ShortStorage_init(i32*) #1

declare dso_local i32 @torch_IntStorage_init(i32*) #1

declare dso_local i32 @torch_LongStorage_init(i32*) #1

declare dso_local i32 @torch_FloatStorage_init(i32*) #1

declare dso_local i32 @torch_DoubleStorage_init(i32*) #1

declare dso_local i32 @torch_HalfStorage_init(i32*) #1

declare dso_local i32 @torch_ByteTensor_init(i32*) #1

declare dso_local i32 @torch_CharTensor_init(i32*) #1

declare dso_local i32 @torch_ShortTensor_init(i32*) #1

declare dso_local i32 @torch_IntTensor_init(i32*) #1

declare dso_local i32 @torch_LongTensor_init(i32*) #1

declare dso_local i32 @torch_FloatTensor_init(i32*) #1

declare dso_local i32 @torch_DoubleTensor_init(i32*) #1

declare dso_local i32 @torch_HalfTensor_init(i32*) #1

declare dso_local i32 @torch_ByteTensorOperator_init(i32*) #1

declare dso_local i32 @torch_CharTensorOperator_init(i32*) #1

declare dso_local i32 @torch_ShortTensorOperator_init(i32*) #1

declare dso_local i32 @torch_IntTensorOperator_init(i32*) #1

declare dso_local i32 @torch_LongTensorOperator_init(i32*) #1

declare dso_local i32 @torch_FloatTensorOperator_init(i32*) #1

declare dso_local i32 @torch_DoubleTensorOperator_init(i32*) #1

declare dso_local i32 @torch_Timer_init(i32*) #1

declare dso_local i32 @torch_DiskFile_init(i32*) #1

declare dso_local i32 @torch_PipeFile_init(i32*) #1

declare dso_local i32 @torch_MemoryFile_init(i32*) #1

declare dso_local i32 @torch_TensorMath_init(i32*) #1

declare dso_local i32 @torch_random_init(i32*) #1

declare dso_local i32 @luaT_newmetatable(i32*, i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
