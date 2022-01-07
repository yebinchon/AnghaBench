; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.expr = type { i32 }
%struct.record_directory = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dirstack = type { i32 }

@fill_directory.dotW = internal constant [2 x i8] c".\00", align 1
@fill_directory.dotdotW = internal constant [3 x i8] c"..\00", align 1
@__const.fill_directory.root = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@DRIVE_FIXED = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ALL_ACCESS = common dso_local global i32 0, align 4
@FILL_STATUS_FILTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_directory(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_directory*, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fill_directory.root, i32 0, i32 0), i64 4, i1 false)
  %22 = call i32 (...) @GetLogicalDrives()
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.table*, %struct.table** %4, align 8
  %25 = call i32 @resize_table(%struct.table* %24, i32 4, i32 8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %205

29:                                               ; preds = %2
  %30 = call %struct.dirstack* @alloc_dirstack(i32 2)
  store %struct.dirstack* %30, %struct.dirstack** %19, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %188, %29
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 26
  br i1 %33, label %34, label %191

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %188

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
  br label %188

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

62:                                               ; preds = %186, %61
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
  br label %192

77:                                               ; preds = %62
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @FindFirstFileW(i8* %78, %struct.TYPE_4__* %17)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %181

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %174, %82
  %84 = load %struct.table*, %struct.table** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @resize_table(%struct.table* %84, i32 %86, i32 8)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @FindClose(i32 %90)
  %92 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %92, i32* %20, align 4
  br label %192

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcmpW(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @fill_directory.dotW, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strcmpW(i32 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fill_directory.dotdotW, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104, %99, %93
  br label %174

110:                                              ; preds = %104
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @append_path(i8* %111, i32 %113, i32* %8)
  store i8* %114, i8** %14, align 8
  %115 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @push_dir(%struct.dirstack* %115, i8* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %110
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @heap_free(i8* %121)
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @FindClose(i32 %123)
  %125 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %125, i32* %20, align 4
  br label %192

126:                                              ; preds = %110
  %127 = load %struct.table*, %struct.table** %4, align 8
  %128 = getelementptr inbounds %struct.table, %struct.table* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to %struct.record_directory*
  store %struct.record_directory* %133, %struct.record_directory** %6, align 8
  %134 = load i32, i32* @FILE_ALL_ACCESS, align 4
  %135 = load %struct.record_directory*, %struct.record_directory** %6, align 8
  %136 = getelementptr inbounds %struct.record_directory, %struct.record_directory* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @build_name(i8 signext %138, i8* %139)
  %141 = load %struct.record_directory*, %struct.record_directory** %6, align 8
  %142 = getelementptr inbounds %struct.record_directory, %struct.record_directory* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.table*, %struct.table** %4, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.expr*, %struct.expr** %5, align 8
  %146 = call i32 @match_row(%struct.table* %143, i32 %144, %struct.expr* %145, i32* %20)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %126
  %149 = load %struct.table*, %struct.table** %4, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @free_row_values(%struct.table* %149, i32 %150)
  br label %174

152:                                              ; preds = %126
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @FindClose(i32 %163)
  %165 = load i32, i32* @FILL_STATUS_FILTERED, align 4
  store i32 %165, i32* %20, align 4
  br label %192

166:                                              ; preds = %155, %152
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %167, %148, %109
  %175 = load i32, i32* %18, align 4
  %176 = call i64 @FindNextFileW(i32 %175, %struct.TYPE_4__* %17)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %83, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @FindClose(i32 %179)
  br label %181

181:                                              ; preds = %178, %77
  %182 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %183 = call i32 @peek_dir(%struct.dirstack* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  br label %187

186:                                              ; preds = %181
  br label %62

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187, %50, %40
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %31

191:                                              ; preds = %31
  br label %192

192:                                              ; preds = %191, %160, %120, %89, %75
  %193 = load %struct.dirstack*, %struct.dirstack** %19, align 8
  %194 = call i32 @free_dirstack(%struct.dirstack* %193)
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @heap_free(i8* %195)
  %197 = load i8*, i8** %13, align 8
  %198 = call i32 @heap_free(i8* %197)
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.table*, %struct.table** %4, align 8
  %203 = getelementptr inbounds %struct.table, %struct.table* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %20, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %192, %27
  %206 = load i32, i32* %3, align 4
  ret i32 %206
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

declare dso_local i32 @push_dir(%struct.dirstack*, i8*, i32) #2

declare dso_local i32 @build_name(i8 signext, i8*) #2

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
