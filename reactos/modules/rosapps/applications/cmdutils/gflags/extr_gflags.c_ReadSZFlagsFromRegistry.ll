; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_gflags.c_ReadSZFlagsFromRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_gflags.c_ReadSZFlagsFromRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ReadSZFlagsFromRegistry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [20 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 80, i1 false)
  store i64 76, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %13 = call i64 @RegQueryValueExW(i32 %10, i32 %11, i32* null, i64* %8, i32* %12, i64* %6)
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @REG_SZ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %22 = call i64 @wcstoul(i32* %21, i32* null, i32 16)
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %20, %16, %2
  %24 = load i64, i64* %7, align 8
  ret i64 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32*, i64*) #2

declare dso_local i64 @wcstoul(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
