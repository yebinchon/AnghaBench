; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_ps2mouse.c_ps2mouse_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_ps2mouse.c_ps2mouse_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2mouse_softc = type { i32, i32, i32, i32, i32 }

@PS2MC_ACK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unhandled ps2 mouse current command byte 0x%02x\0A\00", align 1
@PS2MC_BAT_SUCCESS = common dso_local global i32 0, align 4
@PS2MOUSE_DEV_ID = common dso_local global i32 0, align 4
@PS2M_STS_ENABLE_DEV = common dso_local global i32 0, align 4
@PS2M_STS_REMOTE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unhandled ps2 mouse command 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps2mouse_write(%struct.ps2mouse_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ps2mouse_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ps2mouse_softc* %0, %struct.ps2mouse_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %7, i32 0, i32 4
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %11 = call i32 @fifo_reset(%struct.ps2mouse_softc* %10)
  %12 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %34 [
    i32 131, label %20
    i32 132, label %27
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %25 = load i32, i32* @PS2MC_ACK, align 4
  %26 = call i32 @fifo_put(%struct.ps2mouse_softc* %24, i32 %25)
  br label %38

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %32 = load i32, i32* @PS2MC_ACK, align 4
  %33 = call i32 @fifo_put(%struct.ps2mouse_softc* %31, i32 %32)
  br label %38

34:                                               ; preds = %16
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %27, %20
  %39 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %173

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @fifo_put(%struct.ps2mouse_softc* %45, i32 %46)
  br label %172

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %164 [
    i32 0, label %50
    i32 138, label %54
    i32 134, label %66
    i32 140, label %72
    i32 139, label %84
    i32 131, label %95
    i32 136, label %102
    i32 133, label %109
    i32 137, label %118
    i32 128, label %124
    i32 135, label %134
    i32 132, label %153
    i32 130, label %160
    i32 129, label %160
  ]

50:                                               ; preds = %48
  %51 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %52 = load i32, i32* @PS2MC_ACK, align 4
  %53 = call i32 @fifo_put(%struct.ps2mouse_softc* %51, i32 %52)
  br label %171

54:                                               ; preds = %48
  %55 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %56 = call i32 @ps2mouse_reset(%struct.ps2mouse_softc* %55)
  %57 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %58 = load i32, i32* @PS2MC_ACK, align 4
  %59 = call i32 @fifo_put(%struct.ps2mouse_softc* %57, i32 %58)
  %60 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %61 = load i32, i32* @PS2MC_BAT_SUCCESS, align 4
  %62 = call i32 @fifo_put(%struct.ps2mouse_softc* %60, i32 %61)
  %63 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %64 = load i32, i32* @PS2MOUSE_DEV_ID, align 4
  %65 = call i32 @fifo_put(%struct.ps2mouse_softc* %63, i32 %64)
  br label %171

66:                                               ; preds = %48
  %67 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %68 = call i32 @ps2mouse_reset(%struct.ps2mouse_softc* %67)
  %69 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %70 = load i32, i32* @PS2MC_ACK, align 4
  %71 = call i32 @fifo_put(%struct.ps2mouse_softc* %69, i32 %70)
  br label %171

72:                                               ; preds = %48
  %73 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %74 = call i32 @fifo_reset(%struct.ps2mouse_softc* %73)
  %75 = load i32, i32* @PS2M_STS_ENABLE_DEV, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %82 = load i32, i32* @PS2MC_ACK, align 4
  %83 = call i32 @fifo_put(%struct.ps2mouse_softc* %81, i32 %82)
  br label %171

84:                                               ; preds = %48
  %85 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %86 = call i32 @fifo_reset(%struct.ps2mouse_softc* %85)
  %87 = load i32, i32* @PS2M_STS_ENABLE_DEV, align 4
  %88 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %93 = load i32, i32* @PS2MC_ACK, align 4
  %94 = call i32 @fifo_put(%struct.ps2mouse_softc* %92, i32 %93)
  br label %171

95:                                               ; preds = %48
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %98 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %100 = load i32, i32* @PS2MC_ACK, align 4
  %101 = call i32 @fifo_put(%struct.ps2mouse_softc* %99, i32 %100)
  br label %171

102:                                              ; preds = %48
  %103 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %104 = load i32, i32* @PS2MC_ACK, align 4
  %105 = call i32 @fifo_put(%struct.ps2mouse_softc* %103, i32 %104)
  %106 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %107 = load i32, i32* @PS2MOUSE_DEV_ID, align 4
  %108 = call i32 @fifo_put(%struct.ps2mouse_softc* %106, i32 %107)
  br label %171

109:                                              ; preds = %48
  %110 = load i32, i32* @PS2M_STS_REMOTE_MODE, align 4
  %111 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %116 = load i32, i32* @PS2MC_ACK, align 4
  %117 = call i32 @fifo_put(%struct.ps2mouse_softc* %115, i32 %116)
  br label %171

118:                                              ; preds = %48
  %119 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %120 = load i32, i32* @PS2MC_ACK, align 4
  %121 = call i32 @fifo_put(%struct.ps2mouse_softc* %119, i32 %120)
  %122 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %123 = call i32 @movement_get(%struct.ps2mouse_softc* %122)
  br label %171

124:                                              ; preds = %48
  %125 = load i32, i32* @PS2M_STS_REMOTE_MODE, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %132 = load i32, i32* @PS2MC_ACK, align 4
  %133 = call i32 @fifo_put(%struct.ps2mouse_softc* %131, i32 %132)
  br label %171

134:                                              ; preds = %48
  %135 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %136 = load i32, i32* @PS2MC_ACK, align 4
  %137 = call i32 @fifo_put(%struct.ps2mouse_softc* %135, i32 %136)
  %138 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %139 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %140 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @fifo_put(%struct.ps2mouse_softc* %138, i32 %141)
  %143 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %144 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %145 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @fifo_put(%struct.ps2mouse_softc* %143, i32 %146)
  %148 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %149 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @fifo_put(%struct.ps2mouse_softc* %148, i32 %151)
  br label %171

153:                                              ; preds = %48
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %158 = load i32, i32* @PS2MC_ACK, align 4
  %159 = call i32 @fifo_put(%struct.ps2mouse_softc* %157, i32 %158)
  br label %171

160:                                              ; preds = %48, %48
  %161 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %162 = load i32, i32* @PS2MC_ACK, align 4
  %163 = call i32 @fifo_put(%struct.ps2mouse_softc* %161, i32 %162)
  br label %171

164:                                              ; preds = %48
  %165 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %166 = load i32, i32* @PS2MC_ACK, align 4
  %167 = call i32 @fifo_put(%struct.ps2mouse_softc* %165, i32 %166)
  %168 = load i32, i32* @stderr, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @fprintf(i32 %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %164, %160, %153, %134, %124, %118, %109, %102, %95, %84, %72, %66, %54, %50
  br label %172

172:                                              ; preds = %171, %44
  br label %173

173:                                              ; preds = %172, %38
  %174 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %4, align 8
  %175 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %174, i32 0, i32 4
  %176 = call i32 @pthread_mutex_unlock(i32* %175)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @fifo_reset(%struct.ps2mouse_softc*) #1

declare dso_local i32 @fifo_put(%struct.ps2mouse_softc*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @ps2mouse_reset(%struct.ps2mouse_softc*) #1

declare dso_local i32 @movement_get(%struct.ps2mouse_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
