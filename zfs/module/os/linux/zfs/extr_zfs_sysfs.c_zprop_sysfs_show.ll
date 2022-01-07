; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zprop_sysfs_show.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zprop_sysfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i64, i64, i64, i8*, i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"datasets\00", align 1
@ZFS_TYPE_POOL = common dso_local global i64 0, align 8
@type_map = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@zprop_types = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@PROP_READONLY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"setonce\00", align 1
@PROP_ONETIME = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*, i8*, i64)* @zprop_sysfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zprop_sysfs_show(i8* %0, %struct.TYPE_5__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZFS_TYPE_POOL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @type_map, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @type_map, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %29
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @type_map, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %46, i64 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %42, %29
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %24

64:                                               ; preds = %24
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %68, i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %196

77:                                               ; preds = %17, %4
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8**, i8*** @zprop_types, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %10, align 8
  br label %191

88:                                               ; preds = %77
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PROP_READONLY, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  store i8* %99, i8** %10, align 8
  br label %190

100:                                              ; preds = %88
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PROP_ONETIME, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  store i8* %111, i8** %10, align 8
  br label %189

112:                                              ; preds = %100
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  store i8* %122, i8** %10, align 8
  br label %188

123:                                              ; preds = %112
  %124 = load i8*, i8** %6, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  br label %137

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i8* [ %135, %132 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %136 ]
  store i8* %138, i8** %10, align 8
  br label %187

139:                                              ; preds = %123
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %185

143:                                              ; preds = %139
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  switch i64 %146, label %183 [
    i64 129, label %147
    i64 128, label %156
    i64 130, label %168
  ]

147:                                              ; preds = %143
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %148, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %153)
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8* %155, i8** %10, align 8
  br label %184

156:                                              ; preds = %143
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  br label %166

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i8* [ %164, %161 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %165 ]
  store i8* %167, i8** %10, align 8
  br label %184

168:                                              ; preds = %143
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @zprop_index_to_string(i32 %171, i32 %174, i8** %10, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %182

182:                                              ; preds = %181, %168
  br label %184

183:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %196

184:                                              ; preds = %182, %166, %147
  br label %186

185:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %196

186:                                              ; preds = %184
  br label %187

187:                                              ; preds = %186, %137
  br label %188

188:                                              ; preds = %187, %116
  br label %189

189:                                              ; preds = %188, %104
  br label %190

190:                                              ; preds = %189, %92
  br label %191

191:                                              ; preds = %190, %81
  %192 = load i8*, i8** %8, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %192, i64 %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %194)
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %191, %185, %183, %64
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @zprop_index_to_string(i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
