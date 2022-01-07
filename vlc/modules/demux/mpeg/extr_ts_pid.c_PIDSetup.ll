; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_pid.c_PIDSetup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_pid.c_PIDSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@UINT16_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Tried to redeclare pid %d with another type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PIDSetup(i32* %0, i32 %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %12 = icmp eq %struct.TYPE_7__* %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 8191
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %156

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %125

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 133
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %115 [
    i32 133, label %32
    i32 134, label %35
    i32 132, label %36
    i32 131, label %51
    i32 128, label %66
    i32 129, label %85
    i32 130, label %100
  ]

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = call i32 @PIDReset(%struct.TYPE_7__* %33)
  store i32 1, i32* %5, align 4
  br label %156

35:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %156

36:                                               ; preds = %24
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = call i32 @PIDReset(%struct.TYPE_7__* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ts_pat_New(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %156

50:                                               ; preds = %36
  br label %117

51:                                               ; preds = %24
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = call i32 @PIDReset(%struct.TYPE_7__* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @ts_pmt_New(i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %156

65:                                               ; preds = %51
  br label %117

66:                                               ; preds = %24
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = call i32 @PIDReset(%struct.TYPE_7__* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ts_stream_New(i32* %69, i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %156

84:                                               ; preds = %66
  br label %117

85:                                               ; preds = %24
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = call i32 @PIDReset(%struct.TYPE_7__* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @ts_si_New(i32* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %156

99:                                               ; preds = %85
  br label %117

100:                                              ; preds = %24
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = call i32 @PIDReset(%struct.TYPE_7__* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @ts_psip_New(i32* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %156

114:                                              ; preds = %100
  br label %117

115:                                              ; preds = %24
  %116 = call i32 @assert(i32 0)
  br label %117

117:                                              ; preds = %115, %114, %99, %84, %65, %50
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %155

125:                                              ; preds = %19
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @UINT16_MAX, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  br label %154

142:                                              ; preds = %131, %125
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 133
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32*, i32** %6, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @msg_Warn(i32* %148, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %147, %142
  store i32 0, i32* %5, align 4
  br label %156

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %117
  store i32 1, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %153, %113, %98, %83, %64, %49, %35, %32, %18
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PIDReset(%struct.TYPE_7__*) #1

declare dso_local i32 @ts_pat_New(i32*) #1

declare dso_local i32 @ts_pmt_New(i32*) #1

declare dso_local i32 @ts_stream_New(i32*, i32) #1

declare dso_local i32 @ts_si_New(i32*) #1

declare dso_local i32 @ts_psip_New(i32*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
