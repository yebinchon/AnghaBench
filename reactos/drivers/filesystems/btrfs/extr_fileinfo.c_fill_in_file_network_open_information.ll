; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fill_in_file_network_open_information.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fill_in_file_network_open_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_28__, %struct.TYPE_28__, %struct.TYPE_28__, %struct.TYPE_28__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_18__, %struct.TYPE_21__, i64, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_27__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_18__ }

@.str = private unnamed_addr constant [10 x i8] c"overflow\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no fileref for stream\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i8* null, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_27__*, %struct.TYPE_26__*, i64*)* @fill_in_file_network_open_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_in_file_network_open_information(%struct.TYPE_19__* %0, %struct.TYPE_27__* %1, %struct.TYPE_26__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 48
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = call i32 @WARN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %17, i32* %5, align 4
  br label %179

18:                                               ; preds = %4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = call i32 @RtlZeroMemory(%struct.TYPE_19__* %19, i32 48)
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 48
  store i64 %23, i64* %21, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %30 = icmp ne %struct.TYPE_26__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = icmp ne %struct.TYPE_23__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %28
  %37 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %179

39:                                               ; preds = %31
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %10, align 8
  br label %49

46:                                               ; preds = %18
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %10, align 8
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = icmp eq %struct.TYPE_27__* %50, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = call i32 @KeQuerySystemTime(%struct.TYPE_28__* %11)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = bitcast %struct.TYPE_28__* %66 to i8*
  %68 = bitcast %struct.TYPE_28__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = bitcast %struct.TYPE_28__* %64 to i8*
  %70 = bitcast %struct.TYPE_28__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = bitcast %struct.TYPE_28__* %62 to i8*
  %72 = bitcast %struct.TYPE_28__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 8, i1 false)
  %73 = bitcast %struct.TYPE_28__* %60 to i8*
  %74 = bitcast %struct.TYPE_28__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  br label %100

75:                                               ; preds = %49
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 5
  %78 = call i8* @unix_time_to_win(i32* %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = call i8* @unix_time_to_win(i32* %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = call i8* @unix_time_to_win(i32* %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = call i8* @unix_time_to_win(i32* %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %75, %57
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %100
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  store i32 %109, i32* %115, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %105
  %125 = load i8*, i8** @FILE_ATTRIBUTE_NORMAL, align 8
  br label %135

126:                                              ; preds = %105
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  br label %135

135:                                              ; preds = %126, %124
  %136 = phi i8* [ %125, %124 ], [ %134, %126 ]
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %177

139:                                              ; preds = %100
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %141 = call i32 @fcb_alloc_size(%struct.TYPE_27__* %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @S_ISDIR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %157

152:                                              ; preds = %139
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  br label %157

157:                                              ; preds = %152, %151
  %158 = phi i32 [ 0, %151 ], [ %156, %152 ]
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i8*, i8** @FILE_ATTRIBUTE_NORMAL, align 8
  br label %173

168:                                              ; preds = %157
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  br label %173

173:                                              ; preds = %168, %166
  %174 = phi i8* [ %167, %166 ], [ %172, %168 ]
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %173, %135
  %178 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %177, %36, %15
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @unix_time_to_win(i32*) #1

declare dso_local i32 @fcb_alloc_size(%struct.TYPE_27__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
