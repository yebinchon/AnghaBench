; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_TypeCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_TypeCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@gUnusedArg = common dso_local global i32 0, align 4
@gBm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@kTypeAscii = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@kTypeEbcdic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"EBCDIC\00", align 1
@kTypeBinary = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"binary/image\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Type is %c (%s).\0A\00", align 1
@gConn = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@kErrTYPEFailed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TypeCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @gUnusedArg, align 4
  %13 = call i32 @ARGSUSED(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %60

16:                                               ; preds = %4
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 116
  br i1 %24, label %25, label %44

25:                                               ; preds = %16
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gBm, i32 0, i32 0), align 4
  %27 = load i32, i32* @kTypeAscii, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @kTypeAscii, align 4
  store i32 %30, i32* %9, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %40

31:                                               ; preds = %25
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gBm, i32 0, i32 0), align 4
  %33 = load i32, i32* @kTypeEbcdic, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @kTypeEbcdic, align 4
  store i32 %36, i32* %9, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @kTypeBinary, align 4
  store i32 %38, i32* %9, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @Trace(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %42)
  br label %59

44:                                               ; preds = %16
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @FTPSetTransferType(%struct.TYPE_5__* @gConn, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @kErrTYPEFailed, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @FTPPerror(%struct.TYPE_5__* @gConn, i32 %50, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %58

56:                                               ; preds = %44
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gConn, i32 0, i32 0), align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gBm, i32 0, i32 0), align 4
  br label %58

58:                                               ; preds = %56, %49
  br label %59

59:                                               ; preds = %58, %40
  br label %81

60:                                               ; preds = %4
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @FTPSetTransferType(%struct.TYPE_5__* @gConn, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @kErrTYPEFailed, align 4
  %74 = load i8**, i8*** %6, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @FTPPerror(%struct.TYPE_5__* @gConn, i32 %72, i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %80

78:                                               ; preds = %60
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gConn, i32 0, i32 0), align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gBm, i32 0, i32 0), align 4
  br label %80

80:                                               ; preds = %78, %71
  br label %81

81:                                               ; preds = %80, %59
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @Trace(i32, i8*, i32, i8*) #1

declare dso_local i32 @FTPSetTransferType(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @FTPPerror(%struct.TYPE_5__*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
