; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_allocate_ps_pieces.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_allocate_ps_pieces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_7__, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_allocate_ps_pieces(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i32 @puzzle_free_ps_pieces(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %17, %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @malloc(i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_10__*
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %42, i32* %2, align 4
  br label %202

43:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %102, %43
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i8* @malloc(i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_10__*
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %52
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @free(%struct.TYPE_10__* %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %77

93:                                               ; preds = %77
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = call i32 @free(%struct.TYPE_10__* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %99, align 8
  %100 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %100, i32* %2, align 4
  br label %202

101:                                              ; preds = %52
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %44

105:                                              ; preds = %44
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @malloc(i32 %112)
  %114 = bitcast i8* %113 to %struct.TYPE_10__*
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  br i1 %120, label %150, label %121

121:                                              ; preds = %105
  store i64 0, i64* %7, align 8
  br label %122

122:                                              ; preds = %139, %121
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %123, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %122
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call i32 @free(%struct.TYPE_10__* %137)
  br label %139

139:                                              ; preds = %130
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %7, align 8
  br label %122

142:                                              ; preds = %122
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = call i32 @free(%struct.TYPE_10__* %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %148, align 8
  %149 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %149, i32* %2, align 4
  br label %202

150:                                              ; preds = %105
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = trunc i64 %156 to i32
  %158 = call i8* @malloc(i32 %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %200, label %165

165:                                              ; preds = %150
  store i64 0, i64* %8, align 8
  br label %166

166:                                              ; preds = %183, %165
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = icmp ult i64 %167, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %166
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = load i64, i64* %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i32 @free(%struct.TYPE_10__* %181)
  br label %183

183:                                              ; preds = %174
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %8, align 8
  br label %166

186:                                              ; preds = %166
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = call i32 @free(%struct.TYPE_10__* %189)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %192, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = call i32 @free(%struct.TYPE_10__* %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %198, align 8
  %199 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %199, i32* %2, align 4
  br label %202

200:                                              ; preds = %150
  %201 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %186, %142, %93, %41
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @puzzle_free_ps_pieces(%struct.TYPE_8__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
