; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_OpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_OpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to create Avahi threaded poll\00", align 1
@client_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create avahi client: %s\00", align 1
@NB_PROTOCOLS = common dso_local global i32 0, align 4
@protocols = common dso_local global %struct.TYPE_7__* null, align 8
@AVAHI_IF_UNSPEC = common dso_local global i32 0, align 4
@AVAHI_PROTO_UNSPEC = common dso_local global i32 0, align 4
@browse_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to create avahi service browser %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @OpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommon(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = call i32 @vlc_dictionary_init(i32* %8, i32 1)
  %10 = call i32* (...) @avahi_threaded_poll_new()
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @msg_Err(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %97

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @avahi_threaded_poll_get(i32* %25)
  %27 = load i32, i32* @client_callback, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32* @avahi_client_new(i32 %26, i32 0, i32 %27, %struct.TYPE_6__* %28, i32* %4)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @avahi_strerror(i32 %40)
  %42 = call i32 (i32, i8*, ...) @msg_Err(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %97

43:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NB_PROTOCOLS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @protocols, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %88

60:                                               ; preds = %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @AVAHI_IF_UNSPEC, align 4
  %65 = load i32, i32* @AVAHI_PROTO_UNSPEC, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @protocols, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @browse_callback, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = call i32* @avahi_service_browser_new(i32* %63, i32 %64, i32 %65, i32 %71, i32* null, i32 0, i32 %72, %struct.TYPE_6__* %73)
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %60
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @avahi_client_errno(i32* %83)
  %85 = call i32 @avahi_strerror(i32 %84)
  %86 = call i32 (i32, i8*, ...) @msg_Err(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %97

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %44

91:                                               ; preds = %44
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @avahi_threaded_poll_start(i32* %94)
  %96 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %96, i32* %2, align 4
  br label %119

97:                                               ; preds = %77, %36, %17
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @avahi_client_free(i32* %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @avahi_threaded_poll_free(i32* %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %91
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @vlc_dictionary_init(i32*, i32) #1

declare dso_local i32* @avahi_threaded_poll_new(...) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i32* @avahi_client_new(i32, i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @avahi_threaded_poll_get(i32*) #1

declare dso_local i32 @avahi_strerror(i32) #1

declare dso_local i32* @avahi_service_browser_new(i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @avahi_client_errno(i32*) #1

declare dso_local i32 @avahi_threaded_poll_start(i32*) #1

declare dso_local i32 @avahi_client_free(i32*) #1

declare dso_local i32 @avahi_threaded_poll_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
