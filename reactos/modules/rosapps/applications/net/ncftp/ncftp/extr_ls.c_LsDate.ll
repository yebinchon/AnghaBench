; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_LsDate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_LsDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i32, i32, i32, i32 }

@kModTimeUnknown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Jan  0  1900\00", align 1
@gNowPlus1Hr = common dso_local global i64 0, align 8
@gNowMinus6Mon = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"%s %2d  %4d\00", align 1
@gLsMon = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%s %2d %02d:%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsDate(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @kModTimeUnknown, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcpy(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %61

12:                                               ; preds = %2
  %13 = call %struct.tm* @localtime(i64* %4)
  store %struct.tm* %13, %struct.tm** %5, align 8
  %14 = load %struct.tm*, %struct.tm** %5, align 8
  %15 = icmp eq %struct.tm* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %61

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @gNowPlus1Hr, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @gNowMinus6Mon, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i8**, i8*** @gLsMon, align 8
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1900
  %42 = call i32 (i8*, i8*, i8*, i32, i32, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %37, i32 %41)
  br label %61

43:                                               ; preds = %23
  %44 = load i8*, i8** %3, align 8
  %45 = load i8**, i8*** @gLsMon, align 8
  %46 = load %struct.tm*, %struct.tm** %5, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.tm*, %struct.tm** %5, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tm*, %struct.tm** %5, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tm*, %struct.tm** %5, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, i8*, i8*, i32, i32, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %9, %16, %43, %27
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
