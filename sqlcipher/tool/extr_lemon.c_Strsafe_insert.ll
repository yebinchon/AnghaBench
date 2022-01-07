; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Strsafe_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Strsafe_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_x1 = type { i32, i32, %struct.TYPE_3__**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__**, %struct.TYPE_3__* }

@x1a = common dso_local global %struct.s_x1* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Strsafe_insert(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s_x1, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %13 = icmp eq %struct.s_x1* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %237

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strhash(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %20 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %18, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %25 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %4, align 8
  br label %31

31:                                               ; preds = %42, %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %237

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %4, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %48 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %51 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %174

54:                                               ; preds = %46
  %55 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %56 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %8, align 4
  %59 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %61 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @calloc(i32 %64, i32 32)
  %66 = inttoptr i64 %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 3
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %67, align 8
  %68 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp eq %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %237

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = bitcast %struct.TYPE_3__* %77 to %struct.TYPE_3__**
  %79 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  store %struct.TYPE_3__** %78, %struct.TYPE_3__*** %79, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %90, %72
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %89, align 8
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %80

93:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %163, %93
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %97 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %166

100:                                              ; preds = %94
  %101 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %102 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %10, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strhash(i8* %109)
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %110, %112
  store i32 %113, i32* %5, align 4
  %114 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  store %struct.TYPE_3__* %118, %struct.TYPE_3__** %11, align 8
  %119 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  %120 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %120, i64 %122
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = icmp ne %struct.TYPE_3__* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %100
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  %130 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %130, i64 %132
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store %struct.TYPE_3__** %128, %struct.TYPE_3__*** %135, align 8
  br label %136

136:                                              ; preds = %126, %100
  %137 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  %138 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %138, i64 %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  store %struct.TYPE_3__* %142, %struct.TYPE_3__** %144, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  %151 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %151, i64 %153
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store %struct.TYPE_3__** %154, %struct.TYPE_3__*** %156, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %158 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %9, i32 0, i32 2
  %159 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %159, i64 %161
  store %struct.TYPE_3__* %157, %struct.TYPE_3__** %162, align 8
  br label %163

163:                                              ; preds = %136
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %94

166:                                              ; preds = %94
  %167 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %168 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %167, i32 0, i32 3
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = call i32 @free(%struct.TYPE_3__* %169)
  %171 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %172 = bitcast %struct.s_x1* %171 to i8*
  %173 = bitcast %struct.s_x1* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 24, i1 false)
  br label %174

174:                                              ; preds = %166, %46
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %177 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = and i32 %175, %179
  store i32 %180, i32* %5, align 4
  %181 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %182 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %181, i32 0, i32 3
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %185 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %188
  store %struct.TYPE_3__* %189, %struct.TYPE_3__** %4, align 8
  %190 = load i8*, i8** %3, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %194 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %193, i32 0, i32 2
  %195 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %195, i64 %197
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = icmp ne %struct.TYPE_3__* %199, null
  br i1 %200, label %201, label %212

201:                                              ; preds = %174
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %205 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %204, i32 0, i32 2
  %206 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %206, i64 %208
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  store %struct.TYPE_3__** %203, %struct.TYPE_3__*** %211, align 8
  br label %212

212:                                              ; preds = %201, %174
  %213 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %214 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %213, i32 0, i32 2
  %215 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %215, i64 %217
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  store %struct.TYPE_3__* %219, %struct.TYPE_3__** %221, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %224 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %223, i32 0, i32 2
  %225 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %225, i64 %227
  store %struct.TYPE_3__* %222, %struct.TYPE_3__** %228, align 8
  %229 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %230 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %229, i32 0, i32 2
  %231 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %231, i64 %233
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  store %struct.TYPE_3__** %234, %struct.TYPE_3__*** %236, align 8
  store i32 1, i32* %2, align 4
  br label %237

237:                                              ; preds = %212, %71, %41, %14
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @strhash(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

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
