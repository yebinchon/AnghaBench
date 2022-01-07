; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_MuxImageParse.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_MuxImageParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { i32, i32*, i32*, i32*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i64, i32* }

@kChunks = common dso_local global %struct.TYPE_22__* null, align 8
@IDX_ANMF = common dso_local global i64 0, align 8
@ANMF_CHUNK_SIZE = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*)* @MuxImageParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MuxImageParse(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 4
  store %struct.TYPE_21__** %28, %struct.TYPE_21__*** %13, align 8
  %29 = call i32 @ChunkInit(%struct.TYPE_21__* %11)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** @kChunks, align 8
  %34 = load i64, i64* @IDX_ANMF, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* @ANMF_CHUNK_SIZE, align 8
  store i64 %48, i64* %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %50 = load i32*, i32** %8, align 8
  %51 = ptrtoint i32* %50 to i64
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %53 = load i64, i64* %14, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %52, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %3
  br label %162

59:                                               ; preds = %3
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ChunkAssignData(%struct.TYPE_21__* %11, %struct.TYPE_20__* %15, i32 %60, i64 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = call i64 @ChunkSetHead(%struct.TYPE_21__* %11, i32** %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = call i64 @ChunkDiskSize(%struct.TYPE_21__* %11)
  %71 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %8, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %147, %59
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %80, %81
  br i1 %82, label %83, label %155

83:                                               ; preds = %79
  %84 = call i32 @ChunkInit(%struct.TYPE_21__* %11)
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @ChunkVerifyAndAssign(%struct.TYPE_21__* %11, i32* %85, i64 %86, i64 %87, i32 %88)
  %90 = load i64, i64* @WEBP_MUX_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %162

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ChunkGetIdFromTag(i64 %95)
  switch i32 %96, label %146 [
    i32 130, label %97
    i32 129, label %113
    i32 128, label %134
  ]

97:                                               ; preds = %93
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %162

103:                                              ; preds = %97
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = call i64 @ChunkSetHead(%struct.TYPE_21__* %11, i32** %105)
  %107 = load i64, i64* @WEBP_MUX_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %162

110:                                              ; preds = %103
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %147

113:                                              ; preds = %93
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %162

119:                                              ; preds = %113
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = call i64 @ChunkSetHead(%struct.TYPE_21__* %11, i32** %121)
  %123 = load i64, i64* @WEBP_MUX_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %162

126:                                              ; preds = %119
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %128 = call i32 @MuxImageFinalize(%struct.TYPE_19__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  br label %162

131:                                              ; preds = %126
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %147

134:                                              ; preds = %93
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %162

140:                                              ; preds = %134
  %141 = call i64 @ChunkAppend(%struct.TYPE_21__* %11, %struct.TYPE_21__*** %13)
  %142 = load i64, i64* @WEBP_MUX_OK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %162

145:                                              ; preds = %140
  br label %147

146:                                              ; preds = %93
  br label %162

147:                                              ; preds = %145, %131, %110
  %148 = call i64 @ChunkDiskSize(%struct.TYPE_21__* %11)
  store i64 %148, i64* %12, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 %149
  store i32* %151, i32** %8, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %9, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %9, align 8
  br label %79

155:                                              ; preds = %79
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %162

161:                                              ; preds = %155
  store i32 1, i32* %4, align 4
  br label %164

162:                                              ; preds = %160, %146, %144, %139, %130, %125, %118, %109, %102, %92, %58
  %163 = call i32 @ChunkRelease(%struct.TYPE_21__* %11)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %161
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @ChunkInit(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ChunkAssignData(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i64) #1

declare dso_local i64 @ChunkSetHead(%struct.TYPE_21__*, i32**) #1

declare dso_local i64 @ChunkDiskSize(%struct.TYPE_21__*) #1

declare dso_local i64 @ChunkVerifyAndAssign(%struct.TYPE_21__*, i32*, i64, i64, i32) #1

declare dso_local i32 @ChunkGetIdFromTag(i64) #1

declare dso_local i32 @MuxImageFinalize(%struct.TYPE_19__*) #1

declare dso_local i64 @ChunkAppend(%struct.TYPE_21__*, %struct.TYPE_21__***) #1

declare dso_local i32 @ChunkRelease(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
