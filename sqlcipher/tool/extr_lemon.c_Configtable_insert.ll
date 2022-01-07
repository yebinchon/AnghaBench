; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configtable_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configtable_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_x4 = type { i32, i32, %struct.TYPE_3__**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__**, %struct.TYPE_3__*, %struct.config* }
%struct.config = type { i32 }

@x4a = common dso_local global %struct.s_x4* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Configtable_insert(%struct.config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.config*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s_x4, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.config* %0, %struct.config** %3, align 8
  %12 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %13 = icmp eq %struct.s_x4* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %239

15:                                               ; preds = %1
  %16 = load %struct.config*, %struct.config** %3, align 8
  %17 = call i32 @confighash(%struct.config* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %20 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %18, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %25 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %4, align 8
  br label %31

31:                                               ; preds = %44, %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load %struct.config*, %struct.config** %36, align 8
  %38 = bitcast %struct.config* %37 to i8*
  %39 = load %struct.config*, %struct.config** %3, align 8
  %40 = bitcast %struct.config* %39 to i8*
  %41 = call i64 @Configcmp(i8* %38, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %239

44:                                               ; preds = %34
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %4, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %50 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %53 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %176

56:                                               ; preds = %48
  %57 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %58 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %8, align 4
  %61 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %63 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @calloc(i32 %66, i32 32)
  %68 = inttoptr i64 %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 3
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %69, align 8
  %70 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp eq %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %239

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = bitcast %struct.TYPE_3__* %79 to %struct.TYPE_3__**
  %81 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  store %struct.TYPE_3__** %80, %struct.TYPE_3__*** %81, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %92, %74
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %90
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %91, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %82

95:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %165, %95
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %99 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %168

102:                                              ; preds = %96
  %103 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %104 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  store %struct.TYPE_3__* %108, %struct.TYPE_3__** %10, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load %struct.config*, %struct.config** %110, align 8
  %112 = call i32 @confighash(%struct.config* %111)
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %112, %114
  store i32 %115, i32* %5, align 4
  %116 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  store %struct.TYPE_3__* %120, %struct.TYPE_3__** %11, align 8
  %121 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %122 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %122, i64 %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = icmp ne %struct.TYPE_3__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %102
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %132 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %132, i64 %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store %struct.TYPE_3__** %130, %struct.TYPE_3__*** %137, align 8
  br label %138

138:                                              ; preds = %128, %102
  %139 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %140 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %140, i64 %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store %struct.TYPE_3__* %144, %struct.TYPE_3__** %146, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load %struct.config*, %struct.config** %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  store %struct.config* %149, %struct.config** %151, align 8
  %152 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %153 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %153, i64 %155
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store %struct.TYPE_3__** %156, %struct.TYPE_3__*** %158, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %160 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %161 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %161, i64 %163
  store %struct.TYPE_3__* %159, %struct.TYPE_3__** %164, align 8
  br label %165

165:                                              ; preds = %138
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %96

168:                                              ; preds = %96
  %169 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %170 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %169, i32 0, i32 3
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = call i32 @free(%struct.TYPE_3__* %171)
  %173 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %174 = bitcast %struct.s_x4* %173 to i8*
  %175 = bitcast %struct.s_x4* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 24, i1 false)
  br label %176

176:                                              ; preds = %168, %48
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %179 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, 1
  %182 = and i32 %177, %181
  store i32 %182, i32* %5, align 4
  %183 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %184 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %183, i32 0, i32 3
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %187 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %190
  store %struct.TYPE_3__* %191, %struct.TYPE_3__** %4, align 8
  %192 = load %struct.config*, %struct.config** %3, align 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  store %struct.config* %192, %struct.config** %194, align 8
  %195 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %196 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %195, i32 0, i32 2
  %197 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %197, i64 %199
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = icmp ne %struct.TYPE_3__* %201, null
  br i1 %202, label %203, label %214

203:                                              ; preds = %176
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %207 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %206, i32 0, i32 2
  %208 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %208, i64 %210
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  store %struct.TYPE_3__** %205, %struct.TYPE_3__*** %213, align 8
  br label %214

214:                                              ; preds = %203, %176
  %215 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %216 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %215, i32 0, i32 2
  %217 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %217, i64 %219
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  store %struct.TYPE_3__* %221, %struct.TYPE_3__** %223, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %226 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %225, i32 0, i32 2
  %227 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %227, i64 %229
  store %struct.TYPE_3__* %224, %struct.TYPE_3__** %230, align 8
  %231 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %232 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %231, i32 0, i32 2
  %233 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %233, i64 %235
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  store %struct.TYPE_3__** %236, %struct.TYPE_3__*** %238, align 8
  store i32 1, i32* %2, align 4
  br label %239

239:                                              ; preds = %214, %73, %43, %14
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @confighash(%struct.config*) #1

declare dso_local i64 @Configcmp(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
