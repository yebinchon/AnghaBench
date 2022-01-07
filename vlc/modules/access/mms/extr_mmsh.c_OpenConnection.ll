; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmsh.c_OpenConnection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmsh.c_OpenConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vlc_memstream = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Connection: Close\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"sending request:\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to send request\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.vlc_memstream*)* @OpenConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenConnection(%struct.TYPE_9__* %0, %struct.vlc_memstream* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.vlc_memstream*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.vlc_memstream* %1, %struct.vlc_memstream** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.TYPE_8__* [ %19, %17 ], [ %22, %20 ]
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %26 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %28 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %30 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %23
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @vlc_tls_SocketOpenTCP(i32 %36, i32 %39, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %48 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @free(i32 %49)
  %51 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %34
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %55 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @msg_Dbg(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %60 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %63 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @vlc_tls_Write(i32* %58, i32 %61, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %67 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @free(i32 %68)
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %72 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %52
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = call i32 @msg_Err(%struct.TYPE_9__* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @vlc_tls_Close(i32* %78)
  store %struct.vlc_memstream* null, %struct.vlc_memstream** %5, align 8
  br label %80

80:                                               ; preds = %75, %52
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @VLC_SUCCESS, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @VLC_EGENERIC, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %46, %32
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i32* @vlc_tls_SocketOpenTCP(i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_9__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @vlc_tls_Write(i32*, i32, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vlc_tls_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
