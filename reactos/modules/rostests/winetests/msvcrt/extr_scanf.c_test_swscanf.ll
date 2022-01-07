; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_scanf.c_test_swscanf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_scanf.c_test_swscanf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_swscanf.formatd = internal constant [3 x i8] c"%d\00", align 1
@__const.test_swscanf.format2 = private unnamed_addr constant [7 x i8] c"a4%4%c\00", align 1
@WEOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"swscanf returns %x instead of %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"swscanf returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_swscanf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_swscanf() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8], align 1
  %5 = alloca i8, align 1
  %6 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_swscanf.format2, i32 0, i32 0), i64 7, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %7, align 16
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %9 = call i32 (i8*, i8*, ...) @swscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_swscanf.formatd, i64 0, i64 0), i32* %2)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* @WEOF, align 8
  %12 = trunc i64 %11 to i16
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @broken(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %0
  %22 = phi i1 [ true, %0 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i64, i64* @WEOF, align 8
  %27 = call i32 (i32, i8*, i8, ...) @ok(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 signext %25, i64 %26)
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %28, align 16
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 1
  store i8 52, i8* %29, align 1
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 2
  store i8 52, i8* %30, align 2
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 3
  store i8 98, i8* %31, align 1
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %34 = call i32 (i8*, i8*, ...) @swscanf(i8* %32, i8* %33, i8* %5)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %3, align 4
  %39 = trunc i32 %38 to i8
  %40 = call i32 (i32, i8*, i8, ...) @ok(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 signext %39)
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 98
  %44 = zext i1 %43 to i32
  %45 = load i8, i8* %5, align 1
  %46 = call i32 (i32, i8*, i8, ...) @ok(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8 signext %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @swscanf(i8*, i8*, ...) #2

declare dso_local i32 @ok(i32, i8*, i8 signext, ...) #2

declare dso_local i64 @broken(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
