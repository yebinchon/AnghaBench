; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_add_any_file.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_add_any_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.stat = type { i64, i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to open journal file %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to turn off O_NONBLOCK for %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to fstat file '%s': %m\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Refusing to open '%s', as it is not a regular file.\00", align 1
@JOURNAL_FILES_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Too many open journal files, not adding %s.\00", align 1
@ETOOMANYREFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"File %s added.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i8*)* @add_any_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_any_file(%struct.TYPE_17__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = call i32 @assert(%struct.TYPE_17__* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i1 [ true, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_17__*
  %25 = call i32 @assert(%struct.TYPE_17__* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %20
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @skip_slash(i8* %37)
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = load i32, i32* @O_CLOEXEC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @O_NONBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @openat(i64 %36, i32 %38, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %28
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = load i32, i32* @O_CLOEXEC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @open(i8* %46, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %33
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @errno, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @log_debug_errno(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %11, align 4
  br label %184

60:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @fd_nonblock(i32 %61, i32 0)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @errno, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @log_debug_errno(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  store i32 %68, i32* %11, align 4
  br label %184

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %20
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @fstat(i32 %71, %struct.stat* %10)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @errno, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @log_debug_errno(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  store i32 %77, i32* %11, align 4
  br label %184

78:                                               ; preds = %70
  %79 = call i32 @stat_verify_regular(%struct.stat* %10)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @log_debug_errno(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  br label %184

86:                                               ; preds = %78
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call %struct.TYPE_18__* @ordered_hashmap_get(i32 %89, i8* %90)
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %9, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %93 = icmp ne %struct.TYPE_18__* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %86
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %11, align 4
  br label %184

116:                                              ; preds = %102, %94
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = call i32 @remove_file_real(%struct.TYPE_17__* %117, %struct.TYPE_18__* %118)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  br label %120

120:                                              ; preds = %116, %86
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ordered_hashmap_size(i32 %123)
  %125 = load i64, i64* @JOURNAL_FILES_MAX, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @log_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* @ETOOMANYREFS, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %11, align 4
  br label %184

132:                                              ; preds = %120
  %133 = load i32, i32* %6, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* @O_RDONLY, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @journal_file_open(i32 %133, i8* %134, i32 %135, i32 0, i32 0, i32 0, i32 0, i32* null, i32 %138, i32* null, i32* null, %struct.TYPE_18__** %9)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = load i32, i32* %11, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @log_debug_errno(i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %144)
  br label %184

146:                                              ; preds = %132
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %154 = call i32 @ordered_hashmap_put(i32 %149, i8* %152, %struct.TYPE_18__* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %161 = call i32 @journal_file_close(%struct.TYPE_18__* %160)
  br label %184

162:                                              ; preds = %146
  store i32 0, i32* %8, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %170 = call i32 @track_file_disposition(%struct.TYPE_17__* %168, %struct.TYPE_18__* %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @check_network(%struct.TYPE_17__* %171, i32 %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %162, %157, %142, %127, %110, %82, %74, %65, %56
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @safe_close(i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @journal_put_error(%struct.TYPE_17__* %194, i32 %195, i8* %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %4, align 4
  br label %205

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %190
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @openat(i64, i32, i32) #1

declare dso_local i32 @skip_slash(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i8*) #1

declare dso_local i32 @fd_nonblock(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @stat_verify_regular(%struct.stat*) #1

declare dso_local %struct.TYPE_18__* @ordered_hashmap_get(i32, i8*) #1

declare dso_local i32 @remove_file_real(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @ordered_hashmap_size(i32) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @journal_file_open(i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.TYPE_18__**) #1

declare dso_local i32 @ordered_hashmap_put(i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @journal_file_close(%struct.TYPE_18__*) #1

declare dso_local i32 @track_file_disposition(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @check_network(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @journal_put_error(%struct.TYPE_17__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
