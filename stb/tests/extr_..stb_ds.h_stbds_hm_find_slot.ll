; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hm_find_slot.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hm_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64*, i32* }

@STBDS_HM_STRING = common dso_local global i32 0, align 4
@STBDS_BUCKET_LENGTH = common dso_local global i64 0, align 8
@stbds_hash_probes = common dso_local global i32 0, align 4
@STBDS_BUCKET_SHIFT = common dso_local global i64 0, align 8
@STBDS_BUCKET_MASK = common dso_local global i64 0, align 8
@STBDS_HASH_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32)* @stbds_hm_find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stbds_hm_find_slot(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i8* @STBDS_HASH_TO_ARR(i8* %20, i64 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call %struct.TYPE_4__* @stbds_hash_table(i8* %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @STBDS_HM_STRING, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @stbds_hash_string(i8* %29, i32 %32)
  br label %41

34:                                               ; preds = %5
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @stbds_hash_bytes(i8* %35, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi i64 [ %33, %28 ], [ %40, %34 ]
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* @STBDS_BUCKET_LENGTH, align 8
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp ult i64 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 2
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @stbds_probe_position(i64 %50, i32 %53, i32 %56)
  store i64 %57, i64* %18, align 8
  br label %58

58:                                               ; preds = %176, %49
  %59 = load i32, i32* @stbds_hash_probes, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @stbds_hash_probes, align 4
  %61 = call i32 @STBDS_STATS(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* @STBDS_BUCKET_SHIFT, align 8
  %67 = lshr i64 %65, %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %67
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %19, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %71 = and i64 %69, %70
  store i64 %71, i64* %17, align 8
  br label %72

72:                                               ; preds = %119, %58
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* @STBDS_BUCKET_LENGTH, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %76
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %17, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @stbds_is_key_equal(i8* %86, i64 %87, i8* %88, i64 %89, i32 %90, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %85
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %102 = xor i64 %101, -1
  %103 = and i64 %100, %102
  %104 = load i64, i64* %17, align 8
  %105 = add i64 %103, %104
  store i64 %105, i64* %6, align 8
  br label %190

106:                                              ; preds = %85
  br label %118

107:                                              ; preds = %76
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @STBDS_HASH_EMPTY, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i64 -1, i64* %6, align 8
  br label %190

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %17, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %17, align 8
  br label %72

122:                                              ; preds = %72
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %125 = and i64 %123, %124
  store i64 %125, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %126

126:                                              ; preds = %173, %122
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* %16, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %176

130:                                              ; preds = %126
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %17, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %14, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %130
  %140 = load i8*, i8** %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %17, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @stbds_is_key_equal(i8* %140, i64 %141, i8* %142, i64 %143, i32 %144, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %139
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* @STBDS_BUCKET_MASK, align 8
  %156 = xor i64 %155, -1
  %157 = and i64 %154, %156
  %158 = load i64, i64* %17, align 8
  %159 = add i64 %157, %158
  store i64 %159, i64* %6, align 8
  br label %190

160:                                              ; preds = %139
  br label %172

161:                                              ; preds = %130
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %17, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @STBDS_HASH_EMPTY, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  store i64 -1, i64* %6, align 8
  br label %190

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %160
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %17, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %17, align 8
  br label %126

176:                                              ; preds = %126
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %18, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %18, align 8
  %180 = load i64, i64* @STBDS_BUCKET_LENGTH, align 8
  %181 = load i64, i64* %15, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %15, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %18, align 8
  %189 = and i64 %188, %187
  store i64 %189, i64* %18, align 8
  br label %58

190:                                              ; preds = %170, %153, %116, %99
  %191 = load i64, i64* %6, align 8
  ret i64 %191
}

declare dso_local i8* @STBDS_HASH_TO_ARR(i8*, i64) #1

declare dso_local %struct.TYPE_4__* @stbds_hash_table(i8*) #1

declare dso_local i64 @stbds_hash_string(i8*, i32) #1

declare dso_local i64 @stbds_hash_bytes(i8*, i64, i32) #1

declare dso_local i64 @stbds_probe_position(i64, i32, i32) #1

declare dso_local i32 @STBDS_STATS(i32) #1

declare dso_local i64 @stbds_is_key_equal(i8*, i64, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
