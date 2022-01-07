; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_udf_readdir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_udf_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }

@UDF_BLOCKSIZE = common dso_local global i32 0, align 4
@DRIVER_OP_SUCCESS = common dso_local global i64 0, align 8
@TAGID_FID = common dso_local global i32 0, align 4
@UDF_FILE_DIRECTORY = common dso_local global i32 0, align 4
@UDF_FILE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @udf_readdir(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = call i32 @udf_dirent_free(%struct.TYPE_18__* %17)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %231

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 10
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %19
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add i64 32, %36
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add i64 %37, %43
  %45 = add i64 %44, 3
  %46 = udiv i64 %45, 4
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 7
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = bitcast %struct.TYPE_17__* %51 to i32*
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to %struct.TYPE_17__*
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 7
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %58, align 8
  br label %59

59:                                               ; preds = %29, %19
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %114, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 9
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @malloc(i32 %81)
  %83 = inttoptr i64 %82 to i32*
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 9
  store i32* %83, i32** %85, align 8
  br label %86

86:                                               ; preds = %80, %64
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 9
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @udf_read_sectors(%struct.TYPE_16__* %87, i32* %90, i32 %97, i32 %98)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* @DRIVER_OP_SUCCESS, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %86
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 9
  %106 = load i32*, i32** %105, align 8
  %107 = bitcast i32* %106 to %struct.TYPE_17__*
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 7
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %109, align 8
  br label %113

110:                                              ; preds = %86
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 7
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %112, align 8
  br label %113

113:                                              ; preds = %110, %103
  br label %114

114:                                              ; preds = %113, %59
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = icmp ne %struct.TYPE_17__* %117, null
  br i1 %118, label %119, label %228

119:                                              ; preds = %114
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = load i32, i32* @TAGID_FID, align 4
  %125 = call i32 @udf_checktag(i32* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %228, label %127

127:                                              ; preds = %119
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add i64 32, %134
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 7
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = add i64 %135, %141
  %143 = add i64 %142, 3
  %144 = udiv i64 %143, 4
  %145 = mul i64 4, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @UDF_FILE_DIRECTORY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @UDF_FILE_PARENT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %11, align 4
  %180 = load i64, i64* @DRIVER_OP_SUCCESS, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @uint32_from_le(i32 %193)
  %195 = add nsw i32 %186, %194
  %196 = call i64 @udf_read_sectors(%struct.TYPE_16__* %181, i32* %183, i32 %195, i32 1)
  %197 = icmp ne i64 %180, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %127
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %200 = call i32 @udf_dirent_free(%struct.TYPE_18__* %199)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %231

201:                                              ; preds = %127
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @free_and_null(i32 %204)
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 7
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i32*
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 7
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %213, i64 %220
  store i32* %221, i32** %5, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @unicode16_decode(i32* %222, i32 %223)
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %227, %struct.TYPE_18__** %2, align 8
  br label %231

228:                                              ; preds = %119, %114
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %230 = call i32 @udf_dirent_free(%struct.TYPE_18__* %229)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %231

231:                                              ; preds = %228, %201, %198, %16
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %232
}

declare dso_local i32 @udf_dirent_free(%struct.TYPE_18__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @udf_read_sectors(%struct.TYPE_16__*, i32*, i32, i32) #1

declare dso_local i32 @udf_checktag(i32*, i32) #1

declare dso_local i32 @uint32_from_le(i32) #1

declare dso_local i32 @free_and_null(i32) #1

declare dso_local i32 @unicode16_decode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
