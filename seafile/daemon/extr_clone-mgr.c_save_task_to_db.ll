; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_save_task_to_db.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_save_task_to_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i32*, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [86 x i8] c"REPLACE INTO CloneTasks VALUES ('%q', '%q', '%q', '%q', '%q', '%q', '%q', '%q', '%q')\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"REPLACE INTO CloneTasks VALUES ('%q', '%q', '%q', '%q', '%q', NULL, '%q', '%q', '%q')\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"REPLACE INTO CloneEncInfo VALUES ('%q', %d, '%q')\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"REPLACE INTO CloneVersionInfo VALUES ('%q', %d)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"is_readonly\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"server_url\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"REPLACE INTO CloneTasksMoreInfo VALUES ('%q', '%q')\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @save_task_to_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_task_to_db(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i64 %31, i32 %34, i32 %37, i32 %40)
  store i8* %41, i8** %6, align 8
  br label %68

42:                                               ; preds = %2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %42, %13
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @sqlite_query_exec(i32 %71, i8* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @sqlite3_free(i8* %76)
  store i32 -1, i32* %3, align 4
  br label %200

78:                                               ; preds = %68
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @sqlite3_free(i8* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %78
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 2
  br i1 %89, label %90, label %118

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101, i64 %104)
  store i8* %105, i8** %6, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @sqlite_query_exec(i32 %108, i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @sqlite3_free(i8* %113)
  store i32 -1, i32* %3, align 4
  br label %200

115:                                              ; preds = %95
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @sqlite3_free(i8* %116)
  br label %118

118:                                              ; preds = %115, %90, %85, %78
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = ptrtoint i32* %124 to i32
  %126 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %125)
  store i8* %126, i8** %6, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = call i64 @sqlite_query_exec(i32 %129, i8* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %118
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @sqlite3_free(i8* %134)
  store i32 -1, i32* %3, align 4
  br label %200

136:                                              ; preds = %118
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @sqlite3_free(i8* %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %136
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %148, %143, %136
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %154 = call i32* (...) @json_object()
  store i32* %154, i32** %7, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @json_integer(i64 %158)
  %160 = call i32 @json_object_set_new(i32* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %153
  %166 = load i32*, i32** %7, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @json_string(i64 %169)
  %171 = call i32 @json_object_set_new(i32* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %165, %153
  %173 = load i32*, i32** %7, align 8
  %174 = call i32* @json_dumps(i32* %173, i32 0)
  store i32* %174, i32** %8, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @json_decref(i32* %175)
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = ptrtoint i32* %180 to i32
  %182 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %179, i32 %181)
  store i8* %182, i8** %6, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = call i64 @sqlite_query_exec(i32 %185, i8* %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %172
  %190 = load i8*, i8** %6, align 8
  %191 = call i32 @sqlite3_free(i8* %190)
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 @g_free(i32* %192)
  store i32 -1, i32* %3, align 4
  br label %200

194:                                              ; preds = %172
  %195 = load i8*, i8** %6, align 8
  %196 = call i32 @sqlite3_free(i8* %195)
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @g_free(i32* %197)
  br label %199

199:                                              ; preds = %194, %148
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %199, %189, %133, %112, %75
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32, ...) #1

declare dso_local i64 @sqlite_query_exec(i32, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32) #1

declare dso_local i32 @json_integer(i64) #1

declare dso_local i32 @json_string(i64) #1

declare dso_local i32* @json_dumps(i32*, i32) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
