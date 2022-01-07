; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output_test.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { i32 }

@fake_tls = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@expect_hello = common dso_local global i32 0, align 4
@send_failure = common dso_local global i32 0, align 4
@counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vlc_h2_output*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %6 = call %struct.vlc_h2_output* @vlc_h2_output_create(i32* @fake_tls, i32 0)
  store %struct.vlc_h2_output* %6, %struct.vlc_h2_output** %2, align 8
  %7 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %8 = icmp ne %struct.vlc_h2_output* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %12 = call i32 @vlc_h2_output_destroy(%struct.vlc_h2_output* %11)
  %13 = call i32 @vlc_sem_init(i32* @rx, i32 0)
  store i32 1, i32* @expect_hello, align 4
  %14 = call %struct.vlc_h2_output* @vlc_h2_output_create(i32* @fake_tls, i32 1)
  store %struct.vlc_h2_output* %14, %struct.vlc_h2_output** %2, align 8
  %15 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %16 = icmp ne %struct.vlc_h2_output* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %20 = call i32 @vlc_h2_output_destroy(%struct.vlc_h2_output* %19)
  %21 = call i32 @vlc_sem_destroy(i32* @rx)
  %22 = call i32 @vlc_sem_init(i32* @rx, i32 0)
  %23 = call %struct.vlc_h2_output* @vlc_h2_output_create(i32* @fake_tls, i32 0)
  store %struct.vlc_h2_output* %23, %struct.vlc_h2_output** %2, align 8
  %24 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %25 = icmp ne %struct.vlc_h2_output* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %29 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %28, i32* null)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %34 = call i32* @frame(i8 zeroext 0)
  %35 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %33, i32* %34)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %40 = call i32* @frame(i8 zeroext 1)
  %41 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %39, i32* %40)
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %46 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %45, i32* null)
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %51 = call i32* @frame(i8 zeroext 2)
  %52 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %50, i32* %51)
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %57 = call i32* @frame(i8 zeroext 3)
  %58 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %56, i32* %57)
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %63 = call i32* @frame(i8 zeroext 4)
  %64 = call i32* @frame(i8 zeroext 5)
  %65 = call i32* @frame(i8 zeroext 6)
  %66 = call i32* @frame_list(i32* %63, i32* %64, i32* %65, i32* null)
  %67 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %62, i32* %66)
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %72 = call i32* @frame(i8 zeroext 7)
  %73 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %71, i32* %72)
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %82, %0
  %78 = load i32, i32* %3, align 4
  %79 = icmp ult i32 %78, 8
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = call i32 @vlc_sem_wait(i32* @rx)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %3, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %77

85:                                               ; preds = %77
  %86 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %87 = call i32* @frame(i8 zeroext 8)
  %88 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %86, i32* %87)
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %93 = call i32* @frame(i8 zeroext 9)
  %94 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %92, i32* %93)
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %99 = call i32 @vlc_h2_output_destroy(%struct.vlc_h2_output* %98)
  %100 = call i32 @vlc_sem_destroy(i32* @rx)
  store i32 1, i32* @send_failure, align 4
  %101 = call i32 @vlc_sem_init(i32* @rx, i32 0)
  store i32 10, i32* @counter, align 4
  %102 = call %struct.vlc_h2_output* @vlc_h2_output_create(i32* @fake_tls, i32 0)
  store %struct.vlc_h2_output* %102, %struct.vlc_h2_output** %2, align 8
  %103 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %104 = icmp ne %struct.vlc_h2_output* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %108 = call i32* @frame(i8 zeroext 10)
  %109 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %107, i32* %108)
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  store i8 11, i8* %4, align 1
  br label %113

113:                                              ; preds = %122, %85
  %114 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %115 = load i8, i8* %4, align 1
  %116 = call i32* @frame(i8 zeroext %115)
  %117 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %114, i32* %116)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = call i32 @VLC_TICK_FROM_MS(i32 100)
  %121 = call i32 @vlc_tick_sleep(i32 %120)
  br label %122

122:                                              ; preds = %119
  %123 = load i8, i8* %4, align 1
  %124 = add i8 %123, 1
  store i8 %124, i8* %4, align 1
  br label %113

125:                                              ; preds = %113
  %126 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %127 = call i32* @frame(i8 zeroext 0)
  %128 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %126, i32* %127)
  %129 = icmp eq i32 %128, -1
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %133 = call i32* @frame(i8 zeroext 0)
  %134 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %132, i32* %133)
  %135 = icmp eq i32 %134, -1
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %139 = call i32 @vlc_h2_output_destroy(%struct.vlc_h2_output* %138)
  %140 = call i32 @vlc_sem_destroy(i32* @rx)
  %141 = call i32 @vlc_sem_init(i32* @rx, i32 0)
  store i32 0, i32* @counter, align 4
  store i32 1, i32* @expect_hello, align 4
  %142 = call %struct.vlc_h2_output* @vlc_h2_output_create(i32* @fake_tls, i32 1)
  store %struct.vlc_h2_output* %142, %struct.vlc_h2_output** %2, align 8
  %143 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %144 = icmp ne %struct.vlc_h2_output* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = call i32 @vlc_sem_wait(i32* @rx)
  store i8 1, i8* %5, align 1
  br label %148

148:                                              ; preds = %157, %125
  %149 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %150 = load i8, i8* %5, align 1
  %151 = call i32* @frame(i8 zeroext %150)
  %152 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %149, i32* %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = call i32 @VLC_TICK_FROM_MS(i32 100)
  %156 = call i32 @vlc_tick_sleep(i32 %155)
  br label %157

157:                                              ; preds = %154
  %158 = load i8, i8* %5, align 1
  %159 = add i8 %158, 1
  store i8 %159, i8* %5, align 1
  br label %148

160:                                              ; preds = %148
  %161 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %162 = call i32* @frame(i8 zeroext 0)
  %163 = call i32 @vlc_h2_output_send(%struct.vlc_h2_output* %161, i32* %162)
  %164 = icmp eq i32 %163, -1
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %168 = call i32* @frame(i8 zeroext 0)
  %169 = call i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output* %167, i32* %168)
  %170 = icmp eq i32 %169, -1
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %174 = call i32 @vlc_h2_output_destroy(%struct.vlc_h2_output* %173)
  %175 = call i32 @vlc_sem_destroy(i32* @rx)
  ret i32 0
}

declare dso_local %struct.vlc_h2_output* @vlc_h2_output_create(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_h2_output_destroy(%struct.vlc_h2_output*) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @vlc_h2_output_send_prio(%struct.vlc_h2_output*, i32*) #1

declare dso_local i32* @frame(i8 zeroext) #1

declare dso_local i32 @vlc_h2_output_send(%struct.vlc_h2_output*, i32*) #1

declare dso_local i32* @frame_list(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
