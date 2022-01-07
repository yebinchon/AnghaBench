; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_processor_caption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_processor_caption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_processor_caption.fmtW = internal constant [34 x i8] c"%s Family %u Model %u Stepping %u\00", align 16
@get_processor_caption.x86W = internal constant [4 x i8] c"x86\00", align 1
@get_processor_caption.intel64W = internal constant [8 x i8] c"Intel64\00", align 1
@os_32bitW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_processor_caption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_processor_caption(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i32], align 16
  store i8* %0, i8** %2, align 8
  %5 = call i64 (...) @get_osarchitecture()
  %6 = load i64, i64* @os_32bitW, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_processor_caption.x86W, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_processor_caption.intel64W, i64 0, i64 0)
  store i8* %9, i8** %3, align 8
  %10 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %12 = call i32 @do_cpuid(i32 1, i32* %11)
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = and i32 %16, 3840
  %18 = lshr i32 %17, 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = and i32 %20, 240
  %22 = lshr i32 %21, 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = and i32 %24, 15
  %26 = call i32 @sprintfW(i8* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @get_processor_caption.fmtW, i64 0, i64 0), i8* %14, i32 %18, i32 %22, i32 %25)
  ret void
}

declare dso_local i64 @get_osarchitecture(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
