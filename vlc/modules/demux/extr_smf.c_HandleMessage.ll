; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_smf.c_HandleMessage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_smf.c_HandleMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"malformatted MIDI event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32*)* @HandleMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandleMessage(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i64 @vlc_stream_Seek(i32* %21, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @vlc_stream_Read(i32* %32, i32* %11, i32 1)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %3
  store i32 -1, i32* %4, align 4
  br label %189

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  br label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 240
  switch i32 %49, label %91 [
    i32 240, label %50
    i32 192, label %90
    i32 208, label %90
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %88 [
    i32 240, label %52
    i32 247, label %52
    i32 255, label %78
    i32 241, label %85
    i32 243, label %85
    i32 242, label %86
    i32 244, label %87
    i32 245, label %87
  ]

52:                                               ; preds = %50, %50
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ReadVarInt(i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %189

58:                                               ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.TYPE_19__* @vlc_stream_Block(i32* %59, i32 %60)
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %10, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %63 = icmp eq %struct.TYPE_19__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %189

65:                                               ; preds = %58
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call %struct.TYPE_19__* @block_Realloc(%struct.TYPE_19__* %66, i32 1, i32 %67)
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %10, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = icmp eq %struct.TYPE_19__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %189

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  br label %149

78:                                               ; preds = %50
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = call i32 @HandleMeta(%struct.TYPE_17__* %79, %struct.TYPE_16__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %189

84:                                               ; preds = %78
  br label %170

85:                                               ; preds = %50, %50
  store i32 1, i32* %13, align 4
  br label %89

86:                                               ; preds = %50
  store i32 2, i32* %13, align 4
  br label %89

87:                                               ; preds = %50, %50
  br label %88

88:                                               ; preds = %50, %87
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %86, %85
  br label %92

90:                                               ; preds = %46, %46
  store i32 1, i32* %13, align 4
  br label %92

91:                                               ; preds = %46
  store i32 2, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %90, %89
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 1, %93
  %95 = call %struct.TYPE_19__* @block_Alloc(i32 %94)
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %10, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = icmp eq %struct.TYPE_19__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %170

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %99
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @vlc_stream_Read(i32* %109, i32* %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %186

119:                                              ; preds = %108
  br label %148

120:                                              ; preds = %99
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = call i32 @msg_Err(%struct.TYPE_17__* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %186

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call i32 @vlc_stream_Read(i32* %135, i32* %139, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %186

147:                                              ; preds = %134, %126
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %148, %72
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = call i32 @date_Get(i32* %151)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  store i32 %152, i32* %156, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load i32*, i32** %7, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %165 = call i32 @es_out_Send(i32* %160, i32 %163, %struct.TYPE_19__* %164)
  br label %169

166:                                              ; preds = %149
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %168 = call i32 @block_Release(%struct.TYPE_19__* %167)
  br label %169

169:                                              ; preds = %166, %159
  br label %170

170:                                              ; preds = %169, %98, %84
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 248
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %173, %170
  %178 = load i32*, i32** %8, align 8
  %179 = call i64 @vlc_stream_Tell(i32* %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  store i32 0, i32* %4, align 4
  br label %189

186:                                              ; preds = %146, %123, %118
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %188 = call i32 @block_Release(%struct.TYPE_19__* %187)
  store i32 -1, i32* %4, align 4
  br label %189

189:                                              ; preds = %186, %177, %83, %71, %64, %57, %35
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i64 @vlc_stream_Seek(i32*, i64) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

declare dso_local i32 @ReadVarInt(i32*) #1

declare dso_local %struct.TYPE_19__* @vlc_stream_Block(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @block_Realloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @HandleMeta(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_19__* @block_Alloc(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @date_Get(i32*) #1

declare dso_local i32 @es_out_Send(i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_19__*) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
