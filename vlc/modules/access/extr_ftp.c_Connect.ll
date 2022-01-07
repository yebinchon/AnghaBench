; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_Connect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_Connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"EPSV ALL\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot request extended passive mode\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FTP Extended passive mode disabled\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unsupported path: \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TYPE I\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot set binary transfer mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i8*)* @Connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Connect(i32* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @Login(i32* %9, %struct.TYPE_11__* %10, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %97

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = call i64 @ftp_SendCommand(i32* %16, %struct.TYPE_11__* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 (i32*, i8*, ...) @msg_Err(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %94

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = call i32 @ftp_RecvCommand(i32* %24, %struct.TYPE_11__* %25, i32* null, i32* null)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vlc_tls_GetFD(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @net_GetPeerAddress(i32 %33, i32 %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %94

40:                                               ; preds = %28
  br label %53

41:                                               ; preds = %23
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @msg_Info(i32* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = call i32 @clearCmd(%struct.TYPE_11__* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @Login(i32* %46, %struct.TYPE_11__* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %94

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32* (i64)* @IsUTF8, i32* (i64)* @IsASCII
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32* %66(i64 %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %59
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32*, i8*, ...) @msg_Err(i32* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  br label %94

80:                                               ; preds = %59, %53
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = call i64 @ftp_SendCommand(i32* %81, %struct.TYPE_11__* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = call i32 @ftp_RecvCommand(i32* %86, %struct.TYPE_11__* %87, i32* null, i32* null)
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %80
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 (i32*, i8*, ...) @msg_Err(i32* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %94

93:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %97

94:                                               ; preds = %90, %73, %51, %39, %20
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = call i32 @clearCmd(%struct.TYPE_11__* %95)
  store i32 -1, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %93, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @Login(i32*, %struct.TYPE_11__*, i8*) #1

declare dso_local i64 @ftp_SendCommand(i32*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @ftp_RecvCommand(i32*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @vlc_tls_GetFD(i32) #1

declare dso_local i64 @net_GetPeerAddress(i32, i32, i32*) #1

declare dso_local i32 @msg_Info(i32*, i8*) #1

declare dso_local i32 @clearCmd(%struct.TYPE_11__*) #1

declare dso_local i32* @IsUTF8(i64) #1

declare dso_local i32* @IsASCII(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
