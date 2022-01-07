; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3FromStringNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3FromStringNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__**, %struct.TYPE_16__**, i32 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i8*, i32)* @editDist3FromStringNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @editDist3FromStringNew(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %227

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 32, %25
  %27 = add i64 32, %26
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = add i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = call %struct.TYPE_14__* @sqlite3_malloc64(i32 %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %227

37:                                               ; preds = %23
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 1
  %40 = bitcast %struct.TYPE_14__* %39 to %struct.TYPE_15__*
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 32, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(%struct.TYPE_15__* %45, i32 0, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %58
  %60 = bitcast %struct.TYPE_15__* %59 to i8*
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @memcpy(i8* %65, i8* %66, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %37
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 42
  br i1 %80, label %81, label %96

81:                                               ; preds = %72
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  br label %99

96:                                               ; preds = %72, %37
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %81
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %222, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %225

104:                                              ; preds = %100
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %11, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = call i32 @memset(%struct.TYPE_15__* %111, i32 0, i32 32)
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i32 @utf8Len(i8 zeroext %117, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  store %struct.TYPE_16__* %126, %struct.TYPE_16__** %9, align 8
  br label %127

127:                                              ; preds = %211, %104
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %129 = icmp ne %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %215

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %131, %134
  %136 = load i32, i32* %7, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %211

139:                                              ; preds = %130
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i64 @matchFrom(%struct.TYPE_16__* %140, i8* %144, i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %211

151:                                              ; preds = %139
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %151
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = mul i64 8, %164
  %166 = trunc i64 %165 to i32
  %167 = call %struct.TYPE_16__** @sqlite3_realloc64(%struct.TYPE_16__** %159, i32 %166)
  store %struct.TYPE_16__** %167, %struct.TYPE_16__*** %12, align 8
  %168 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %169 = icmp eq %struct.TYPE_16__** %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  br label %215

171:                                              ; preds = %156
  %172 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 3
  store %struct.TYPE_16__** %172, %struct.TYPE_16__*** %174, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %176 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %176, i64 %181
  store %struct.TYPE_16__* %175, %struct.TYPE_16__** %182, align 8
  br label %210

183:                                              ; preds = %151
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = mul i64 8, %191
  %193 = trunc i64 %192 to i32
  %194 = call %struct.TYPE_16__** @sqlite3_realloc64(%struct.TYPE_16__** %186, i32 %193)
  store %struct.TYPE_16__** %194, %struct.TYPE_16__*** %12, align 8
  %195 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %196 = icmp eq %struct.TYPE_16__** %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %215

198:                                              ; preds = %183
  %199 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 2
  store %struct.TYPE_16__** %199, %struct.TYPE_16__*** %201, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %203 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %203, i64 %208
  store %struct.TYPE_16__* %202, %struct.TYPE_16__** %209, align 8
  br label %210

210:                                              ; preds = %198, %171
  br label %211

211:                                              ; preds = %210, %150, %138
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  store %struct.TYPE_16__* %214, %struct.TYPE_16__** %9, align 8
  br label %127

215:                                              ; preds = %197, %170, %127
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %217 = icmp ne %struct.TYPE_16__* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %220 = call i32 @editDist3FromStringDelete(%struct.TYPE_14__* %219)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  br label %225

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %100

225:                                              ; preds = %218, %100
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %226, %struct.TYPE_14__** %4, align 8
  br label %227

227:                                              ; preds = %225, %36, %15
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %228
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_14__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @utf8Len(i8 zeroext, i32) #1

declare dso_local i64 @matchFrom(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local %struct.TYPE_16__** @sqlite3_realloc64(%struct.TYPE_16__**, i32) #1

declare dso_local i32 @editDist3FromStringDelete(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
