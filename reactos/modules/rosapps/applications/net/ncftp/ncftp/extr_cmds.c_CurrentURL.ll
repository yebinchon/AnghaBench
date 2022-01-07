; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_CurrentURL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_CurrentURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32, i32 }

@gConn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@gRemoteCWD = common dso_local global i8* null, align 8
@gStartDir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CurrentURL(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca [160 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 40)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 0), align 8
  %13 = call i32 @STRNCPY(i8* %11, i8* %12)
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 1), align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 1), align 8
  %21 = call i32 @STREQ(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 1), align 8
  %25 = call i32 @STREQ(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 1), align 8
  %31 = call i32 @STRNCPY(i8* %29, i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %39

37:                                               ; preds = %27
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 2), align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %36 ], [ %38, %37 ]
  %41 = call i32 @STRNCPY(i8* %33, i8* %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 3), align 8
  %45 = call i32 @STRNCPY(i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %39, %23, %19, %3
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 4), align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %50 = load i8*, i8** @gRemoteCWD, align 8
  %51 = call i32 @STRNCPY(i8* %49, i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %55 = load i32, i32* @gStartDir, align 4
  %56 = load i32, i32* @gStartDir, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = call i32 @AbsoluteToRelative(i32 %53, i32 4, i8* %54, i32 %55, i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @BookmarkToURL(%struct.TYPE_5__* %7, i8* %59, i64 %60)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @STREQ(i8*, i8*) #1

declare dso_local i32 @AbsoluteToRelative(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @BookmarkToURL(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
