; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_datafile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_datafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_datafile = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dirstack = type { i32 }

@fill_datafile.dotW = internal constant [2 x i8] c".\00", align 1
@fill_datafile.dotdotW = internal constant [3 x i8] c"..\00", align 1
@__const.fill_datafile.root = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@DRIVE_FIXED = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILL_STATUS_FILTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_datafile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_datafile(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_datafile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dirstack*, align 8
  %20 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %21 = bitcast [4 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fill_datafile.root, i32 0, i32 0), i64 4, i1 false)
  %22 = call i32 (...) @GetLogicalDrives()
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.table*, %struct.table** %4, align 8
  %25 = call i32 @resize_table(%struct.table* %24, i32 8, i32 8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %209

29:                                               ; preds = %2
  %30 = call %struct.dirstack* @alloc_dirstack(i32 2)
  store %struct.dirstack* %30, %struct.dirstack** %19, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %192, %29
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 26
  br i1 %33, label %34, label %195

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %192

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 65, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %47 = call i64 @GetDriveTypeW(i8* %46)
  %48 = load i64, i64* @DRIVE_FIXED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %192

51:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  %52 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %53 = load %struct.expr*, %struct.expr** %5, align 8
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @seed_dirs(%struct.dirstack* %52, %struct.expr* %53, i8 signext %55, i32* %11)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %60 = call i32 @clear_dirstack(%struct.dirstack* %59)
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %190, %61
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @heap_free(i8* %63)
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @heap_free(i8* %65)
  %67 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %68 = call i8* @pop_dir(%struct.dirstack* %67, i32* %8)
  store i8* %68, i8** %13, align 8
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i8* @build_glob(i8 signext %70, i8* %71, i32 %72)
  store i8* %73, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %76, i32* %20, align 4
  br label %196

77:                                               ; preds = %62
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @FindFirstFileW(i8* %78, %struct.TYPE_4__* %17)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %185

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %178, %82
  %84 = load %struct.table*, %struct.table** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @resize_table(%struct.table* %84, i32 %86, i32 8)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @FindClose(i32 %91)
  br label %196

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strcmpW(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @fill_datafile.dotW, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strcmpW(i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fill_datafile.dotdotW, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98, %93
  br label %178

104:                                              ; preds = %98
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @append_path(i8* %105, i32 %107, i32* %8)
  store i8* %108, i8** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %104
  %115 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @push_dir(%struct.dirstack* %115, i8* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %178

121:                                              ; preds = %114
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @heap_free(i8* %122)
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @FindClose(i32 %124)
  %126 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %126, i32* %20, align 4
  br label %196

127:                                              ; preds = %104
  %128 = load %struct.table*, %struct.table** %4, align 8
  %129 = getelementptr inbounds %struct.table, %struct.table* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.record_datafile*
  store %struct.record_datafile* %134, %struct.record_datafile** %6, align 8
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @build_name(i8 signext %136, i8* %137)
  %139 = load %struct.record_datafile*, %struct.record_datafile** %6, align 8
  %140 = getelementptr inbounds %struct.record_datafile, %struct.record_datafile* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.record_datafile*, %struct.record_datafile** %6, align 8
  %142 = getelementptr inbounds %struct.record_datafile, %struct.record_datafile* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @get_file_version(i32 %143)
  %145 = load %struct.record_datafile*, %struct.record_datafile** %6, align 8
  %146 = getelementptr inbounds %struct.record_datafile, %struct.record_datafile* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.table*, %struct.table** %4, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.expr*, %struct.expr** %5, align 8
  %150 = call i32 @match_row(%struct.table* %147, i32 %148, %struct.expr* %149, i32* %20)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %127
  %153 = load %struct.table*, %struct.table** %4, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @free_row_values(%struct.table* %153, i32 %154)
  br label %178

156:                                              ; preds = %127
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, 1
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @FindClose(i32 %167)
  %169 = load i32, i32* @FILL_STATUS_FILTERED, align 4
  store i32 %169, i32* %20, align 4
  br label %196

170:                                              ; preds = %159, %156
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, 8
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %171, %152, %120, %103
  %179 = load i32, i32* %18, align 4
  %180 = call i64 @FindNextFileW(i32 %179, %struct.TYPE_4__* %17)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %83, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @FindClose(i32 %183)
  br label %185

185:                                              ; preds = %182, %77
  %186 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %187 = call i32 @peek_dir(%struct.dirstack* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  br label %191

190:                                              ; preds = %185
  br label %62

191:                                              ; preds = %189
  br label %192

192:                                              ; preds = %191, %50, %40
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %31

195:                                              ; preds = %31
  br label %196

196:                                              ; preds = %195, %164, %121, %89, %75
  %197 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %198 = call i32 @free_dirstack(%struct.dirstack* %197)
  %199 = load i8*, i8** %12, align 8
  %200 = call i32 @heap_free(i8* %199)
  %201 = load i8*, i8** %13, align 8
  %202 = call i32 @heap_free(i8* %201)
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.table*, %struct.table** %4, align 8
  %207 = getelementptr inbounds %struct.table, %struct.table* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %20, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %196, %27
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetLogicalDrives(...) #2

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #2

declare dso_local %struct.dirstack* @alloc_dirstack(i32) #2

declare dso_local i64 @GetDriveTypeW(i8*) #2

declare dso_local i32 @seed_dirs(%struct.dirstack*, %struct.expr*, i8 signext, i32*) #2

declare dso_local i32 @clear_dirstack(%struct.dirstack*) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i8* @pop_dir(%struct.dirstack*, i32*) #2

declare dso_local i8* @build_glob(i8 signext, i8*, i32) #2

declare dso_local i32 @FindFirstFileW(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i32) #2

declare dso_local i32 @strcmpW(i32, i8*) #2

declare dso_local i8* @append_path(i8*, i32, i32*) #2

declare dso_local i64 @push_dir(%struct.dirstack*, i8*, i32) #2

declare dso_local i32 @build_name(i8 signext, i8*) #2

declare dso_local i32 @get_file_version(i32) #2

declare dso_local i32 @match_row(%struct.table*, i32, %struct.expr*, i32*) #2

declare dso_local i32 @free_row_values(%struct.table*, i32) #2

declare dso_local i64 @FindNextFileW(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @peek_dir(%struct.dirstack*) #2

declare dso_local i32 @free_dirstack(%struct.dirstack*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
