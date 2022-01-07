; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_wstrtime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_wstrtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_wstrtime.format = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"Wrong return value\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Wrong length: returned %d, should be 8\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Wrong format: count = %d, should be 3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wstrtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wstrtime() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [15 x i8], align 1
  %9 = bitcast [15 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_wstrtime.format, i32 0, i32 0), i64 15, i1 false)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %11 = call i8* @_wstrtime(i8* %10)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %14 = icmp eq i8* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %18 = call i32 @wcslen(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 8
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %26 = call i32 @swscanf(i8* %24, i8* %25, i32* %3, i32* %4, i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 3
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @_wstrtime(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @wcslen(i8*) #2

declare dso_local i32 @swscanf(i8*, i8*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
