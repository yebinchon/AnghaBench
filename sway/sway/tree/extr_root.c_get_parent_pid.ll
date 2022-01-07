; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_get_parent_pid.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_get_parent_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/%d/stat\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_parent_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_parent_pid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i8* null, i8** %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @getline(i8** %6, i64* %9, i32* %18)
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strtok(i8* %22, i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @strtok(i8* null, i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strtok(i8* null, i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strtok(i8* null, i8* %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strtol(i8* %31, i32* null, i32 10)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %17
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ -1, %45 ], [ %47, %46 ]
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
