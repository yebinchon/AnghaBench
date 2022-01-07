; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_oggseek.c_Oggseek_ProbeEnd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_oggseek.c_Oggseek_ProbeEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }

@OGGSEEK_BYTES_TO_READ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_TICK_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Oggseek_ProbeEnd(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  store i64 0, i64* %12, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @vlc_stream_Tell(i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @stream_Size(i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* @OGGSEEK_BYTES_TO_READ, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @OGGSEEK_BYTES_TO_READ, align 4
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = call i32 @ogg_stream_init(i32* %3, i32 -1)
  %36 = call i32 @ogg_sync_init(%struct.TYPE_13__* %4)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @stream_Size(i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAX_PAGE_SIZE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %40, %47
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @__MAX(i64 0, i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = call i64 @__MAX(i64 %51, i64 %55)
  store i64 %56, i64* %8, align 8
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @vlc_stream_Seek(i32 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %1
  %64 = call i32 @ogg_sync_clear(%struct.TYPE_13__* %4)
  %65 = call i32 @ogg_stream_clear(i32* %3)
  br label %210

66:                                               ; preds = %1
  br label %67

67:                                               ; preds = %200, %66
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %201

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %173, %71
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %174

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i64 @ogg_sync_pageseek(%struct.TYPE_13__* %4, i32* %5)
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* @OGGSEEK_BYTES_TO_READ, align 4
  %84 = call i8* @ogg_sync_buffer(%struct.TYPE_13__* %4, i32 %83)
  store i8* %84, i8** %16, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %202

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i32, i32* @OGGSEEK_BYTES_TO_READ, align 4
  %94 = call i64 @vlc_stream_Read(i32 %91, i8* %92, i32 %93)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp slt i64 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %202

98:                                               ; preds = %88
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @ogg_sync_wrote(%struct.TYPE_13__* %4, i64 %102)
  br label %104

104:                                              ; preds = %172, %111, %98
  %105 = call i32 @ogg_sync_pageout(%struct.TYPE_13__* %4, i32* %5)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %173

107:                                              ; preds = %104
  %108 = call i64 @ogg_page_granulepos(i32* %5)
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %104

112:                                              ; preds = %107
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %169, %112
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %172

119:                                              ; preds = %113
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %122, i64 %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @ogg_page_serialno(i32* %5)
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %169

132:                                              ; preds = %119
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %135, i64 %137
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %143, i64 %145
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i64 @Ogg_GranuleToTime(%struct.TYPE_12__* %139, i64 %140, i32 %152, i32 0)
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* @VLC_TICK_INVALID, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %132
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* @VLC_TICK_0, align 8
  %163 = sub nsw i64 %161, %162
  %164 = call i64 @SEC_FROM_VLC_TICK(i64 %163)
  %165 = call i64 @__MAX(i64 %160, i64 %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %202

168:                                              ; preds = %132
  br label %172

169:                                              ; preds = %131
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %113

172:                                              ; preds = %168, %113
  br label %104

173:                                              ; preds = %104
  br label %72

174:                                              ; preds = %72
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @UINT_MAX, align 4
  %177 = ashr i32 %176, 1
  %178 = icmp ule i32 %175, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load i32, i32* %15, align 4
  %181 = shl i32 %180, 1
  store i32 %181, i32* %15, align 4
  %182 = load i64, i64* %14, align 8
  %183 = load i32, i32* %15, align 4
  %184 = zext i32 %183 to i64
  %185 = sub nsw i64 %182, %184
  store i64 %185, i64* %8, align 8
  br label %191

186:                                              ; preds = %174
  %187 = load i32, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %8, align 8
  %190 = sub nsw i64 %189, %188
  store i64 %190, i64* %8, align 8
  br label %191

191:                                              ; preds = %186, %179
  %192 = load i64, i64* %8, align 8
  store i64 %192, i64* %7, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %7, align 8
  %197 = call i64 @vlc_stream_Seek(i32 %195, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %201

200:                                              ; preds = %191
  br label %67

201:                                              ; preds = %199, %67
  br label %202

202:                                              ; preds = %201, %157, %97, %87
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = call i64 @vlc_stream_Seek(i32 %205, i64 %206)
  %208 = call i32 @ogg_sync_clear(%struct.TYPE_13__* %4)
  %209 = call i32 @ogg_stream_clear(i32* %3)
  br label %210

210:                                              ; preds = %202, %63
  ret void
}

declare dso_local i64 @vlc_stream_Tell(i32) #1

declare dso_local i64 @stream_Size(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ogg_stream_init(i32*, i32) #1

declare dso_local i32 @ogg_sync_init(%struct.TYPE_13__*) #1

declare dso_local i64 @__MAX(i64, i64) #1

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

declare dso_local i32 @ogg_sync_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @ogg_stream_clear(i32*) #1

declare dso_local i64 @ogg_sync_pageseek(%struct.TYPE_13__*, i32*) #1

declare dso_local i8* @ogg_sync_buffer(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @vlc_stream_Read(i32, i8*, i32) #1

declare dso_local i32 @ogg_sync_wrote(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @ogg_sync_pageout(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @ogg_page_granulepos(i32*) #1

declare dso_local i64 @ogg_page_serialno(i32*) #1

declare dso_local i64 @Ogg_GranuleToTime(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i64 @SEC_FROM_VLC_TICK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
