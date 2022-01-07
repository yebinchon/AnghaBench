; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__lclose.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__lclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"couldn't create file \22%s\22 (err=%d)\0A\00", align 1
@sillytext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"_hwrite complains\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_lclose complains\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"DeleteFile failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__lclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__lclose() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @filename, align 4
  %4 = call i64 @_lcreat(i32 %3, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @HFILE_ERROR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @filename, align 4
  %10 = call i32 (...) @GetLastError()
  %11 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  br label %35

12:                                               ; preds = %0
  %13 = load i64, i64* @HFILE_ERROR, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* @sillytext, align 4
  %16 = load i32, i32* @sillytext, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = call i64 @_hwrite(i64 %14, i32 %15, i32 %17)
  %19 = icmp ne i64 %13, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @HFILE_ERROR, align 8
  %23 = load i64, i64* %1, align 8
  %24 = call i64 @_lclose(i64 %23)
  %25 = icmp ne i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @filename, align 4
  %29 = call i64 @DeleteFileA(i32 %28)
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %2, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @_lcreat(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @_hwrite(i64, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @_lclose(i64) #1

declare dso_local i64 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
