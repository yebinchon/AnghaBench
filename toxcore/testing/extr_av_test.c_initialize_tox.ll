; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_initialize_tox.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_initialize_tox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tox_Options = type { i32, i32, i64 }

@TOX_ERR_NEW_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Created 3 instances of Tox\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Preparing network...\0A\00", align 1
@TOX_ADDRESS_SIZE = common dso_local global i32 0, align 4
@t_accept_friend_request_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"gentoo\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Toxes are online, took %llu seconds\0A\00", align 1
@TOX_CONNECTION_UDP = common dso_local global i64 0, align 8
@TOXAV_ERR_NEW_OK = common dso_local global i64 0, align 8
@t_toxav_call_cb = common dso_local global i32 0, align 4
@t_toxav_call_state_cb = common dso_local global i32 0, align 4
@t_toxav_bit_rate_status_cb = common dso_local global i32 0, align 4
@t_toxav_receive_video_frame_cb = common dso_local global i32 0, align 4
@t_toxav_receive_audio_frame_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Created 2 instances of ToxAV\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"All set after %llu seconds!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_tox(i32** %0, i32** %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.Tox_Options, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = call i32 @tox_options_default(%struct.Tox_Options* %13)
  %22 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %13, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %13, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %13, i32 0, i32 1
  store i32 33445, i32* %24, align 4
  %25 = call i32* @tox_new(%struct.Tox_Options* %13, i64* %14)
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @TOX_ERR_NEW_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %13, i32 0, i32 1
  store i32 33455, i32* %32, align 4
  %33 = call i32* @tox_new(%struct.Tox_Options* %13, i64* %14)
  store i32* %33, i32** %11, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @TOX_ERR_NEW_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = getelementptr inbounds %struct.Tox_Options, %struct.Tox_Options* %13, i32 0, i32 1
  store i32 33465, i32* %39, align 4
  %40 = call i32* @tox_new(%struct.Tox_Options* %13, i64* %14)
  store i32* %40, i32** %12, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @TOX_ERR_NEW_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i64 @time(i32* null)
  store i64 %48, i64* %15, align 8
  store i64 974536, i64* %16, align 8
  %49 = load i32, i32* @TOX_ADDRESS_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %17, align 8
  %52 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %18, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @t_accept_friend_request_cb, align 4
  %55 = call i32 @tox_callback_friend_request(i32* %53, i32 %54, i64* %16)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @tox_self_get_address(i32* %56, i32* %52)
  %58 = load i32*, i32** %12, align 8
  %59 = call i64 @tox_friend_add(i32* %58, i32* %52, i32* bitcast ([7 x i8]* @.str.2 to i32*), i32 7, i32* null)
  %60 = icmp ne i64 %59, -1
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  store i32 1, i32* %19, align 4
  br label %63

63:                                               ; preds = %103, %5
  br label %64

64:                                               ; preds = %63
  %65 = load i32**, i32*** %6, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @tox_iterate(i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @tox_iterate(i32* %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @tox_iterate(i32* %70)
  %72 = load i32**, i32*** %6, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @tox_self_get_connection_status(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %64
  %77 = load i32*, i32** %11, align 8
  %78 = call i64 @tox_self_get_connection_status(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = call i64 @tox_self_get_connection_status(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = call i64 @time(i32* null)
  %89 = load i64, i64* %15, align 8
  %90 = sub i64 %88, %89
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %87, %84, %80, %76, %64
  %93 = load i32*, i32** %11, align 8
  %94 = call i64 @tox_friend_get_connection_status(i32* %93, i32 0, i32* null)
  %95 = load i64, i64* @TOX_CONNECTION_UDP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32*, i32** %12, align 8
  %99 = call i64 @tox_friend_get_connection_status(i32* %98, i32 0, i32* null)
  %100 = load i64, i64* @TOX_CONNECTION_UDP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %105

103:                                              ; preds = %97, %92
  %104 = call i32 @c_sleep(i32 20)
  br label %63

105:                                              ; preds = %102
  %106 = load i32*, i32** %11, align 8
  %107 = call i32* @toxav_new(i32* %106, i64* %20)
  %108 = load i32**, i32*** %7, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* @TOXAV_ERR_NEW_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = call i32* @toxav_new(i32* %114, i64* %20)
  %116 = load i32**, i32*** %9, align 8
  store i32* %115, i32** %116, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* @TOXAV_ERR_NEW_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32**, i32*** %7, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @t_toxav_call_cb, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @toxav_callback_call(i32* %123, i32 %124, i32* %125)
  %127 = load i32**, i32*** %7, align 8
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @t_toxav_call_state_cb, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @toxav_callback_call_state(i32* %128, i32 %129, i32* %130)
  %132 = load i32**, i32*** %7, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @t_toxav_bit_rate_status_cb, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @toxav_callback_bit_rate_status(i32* %133, i32 %134, i32* %135)
  %137 = load i32**, i32*** %7, align 8
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @t_toxav_receive_video_frame_cb, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @toxav_callback_video_receive_frame(i32* %138, i32 %139, i32* %140)
  %142 = load i32**, i32*** %7, align 8
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* @t_toxav_receive_audio_frame_cb, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @toxav_callback_audio_receive_frame(i32* %143, i32 %144, i32* %145)
  %147 = load i32**, i32*** %9, align 8
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @t_toxav_call_cb, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @toxav_callback_call(i32* %148, i32 %149, i32* %150)
  %152 = load i32**, i32*** %9, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @t_toxav_call_state_cb, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @toxav_callback_call_state(i32* %153, i32 %154, i32* %155)
  %157 = load i32**, i32*** %9, align 8
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* @t_toxav_bit_rate_status_cb, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @toxav_callback_bit_rate_status(i32* %158, i32 %159, i32* %160)
  %162 = load i32**, i32*** %9, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @t_toxav_receive_video_frame_cb, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = call i32 @toxav_callback_video_receive_frame(i32* %163, i32 %164, i32* %165)
  %167 = load i32**, i32*** %9, align 8
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @t_toxav_receive_audio_frame_cb, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @toxav_callback_audio_receive_frame(i32* %168, i32 %169, i32* %170)
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %173 = call i64 @time(i32* null)
  %174 = load i64, i64* %15, align 8
  %175 = sub i64 %173, %174
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %175)
  %177 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %177)
  ret void
}

declare dso_local i32 @tox_options_default(%struct.Tox_Options*) #1

declare dso_local i32* @tox_new(%struct.Tox_Options*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @time(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tox_callback_friend_request(i32*, i32, i64*) #1

declare dso_local i32 @tox_self_get_address(i32*, i32*) #1

declare dso_local i64 @tox_friend_add(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @tox_iterate(i32*) #1

declare dso_local i64 @tox_self_get_connection_status(i32*) #1

declare dso_local i64 @tox_friend_get_connection_status(i32*, i32, i32*) #1

declare dso_local i32 @c_sleep(i32) #1

declare dso_local i32* @toxav_new(i32*, i64*) #1

declare dso_local i32 @toxav_callback_call(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_call_state(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_bit_rate_status(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_video_receive_frame(i32*, i32, i32*) #1

declare dso_local i32 @toxav_callback_audio_receive_frame(i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
