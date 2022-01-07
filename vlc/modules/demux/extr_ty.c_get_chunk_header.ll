; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_get_chunk_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_get_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [21 x i8] c"parsing ty chunk #%d\00", align 1
@TIVO_PES_FILEID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@CHUNK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"chunk has %d stuff bytes at end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @get_chunk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chunk_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @msg_Dbg(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @vlc_stream_Read(i32 %25, i32* null, i32 %29)
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %189

37:                                               ; preds = %22
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vlc_stream_Peek(i32 %43, i32** %7, i32 4)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i64 @U32_AT(i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %40
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  store i32 0, i32* %2, align 4
  br label %189

59:                                               ; preds = %51
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i64 @U32_AT(i32* %61)
  %63 = load i64, i64* @TIVO_PES_FILEID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = call i64 @parse_master(%struct.TYPE_6__* %66)
  %68 = load i64, i64* @VLC_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %189

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = call i32 @get_chunk_header(%struct.TYPE_6__* %72)
  store i32 %73, i32* %2, align 4
  br label %189

74:                                               ; preds = %59
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 128
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %5, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 65535
  br i1 %104, label %105, label %110

105:                                              ; preds = %80
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, -32769
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %80
  br label %122

111:                                              ; preds = %74
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %5, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %111, %110
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 7
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @free(i32* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 6
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @vlc_stream_Read(i32 %135, i32* null, i32 4)
  %137 = icmp ne i32 %136, 4
  br i1 %137, label %138, label %139

138:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %189

139:                                              ; preds = %122
  %140 = load i32, i32* %5, align 4
  %141 = mul nsw i32 %140, 16
  %142 = call i32* @xmalloc(i32 %141)
  store i32* %142, i32** %6, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %5, align 4
  %148 = mul nsw i32 %147, 16
  %149 = call i32 @vlc_stream_Read(i32 %145, i32* %146, i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = mul nsw i32 %150, 16
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %139
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @free(i32* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  store i32 0, i32* %2, align 4
  br label %189

158:                                              ; preds = %139
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32* @parse_chunk_headers(i32* %159, i32 %160, i32* %9)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  store i32* %161, i32** %163, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @free(i32* %164)
  %166 = load i32, i32* @CHUNK_SIZE, align 4
  %167 = sub nsw i32 %166, 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %170, 16
  %172 = sub nsw i32 %167, %171
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %158
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @msg_Dbg(%struct.TYPE_6__* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %186)
  br label %188

188:                                              ; preds = %182, %158
  store i32 1, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %153, %138, %71, %70, %56, %36
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @U32_AT(i32*) #1

declare dso_local i64 @parse_master(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32* @parse_chunk_headers(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
