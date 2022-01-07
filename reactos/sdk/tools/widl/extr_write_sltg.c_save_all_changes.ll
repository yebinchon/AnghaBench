; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_save_all_changes.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_save_all_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@output_buffer = common dso_local global i64 0, align 8
@output_buffer_pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"name_table_offset = %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"*name_table_offset = %#x\0A\00", align 1
@typelib_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c".res\00", align 1
@__const.save_all_changes.typelib_id = private unnamed_addr constant [13 x i8] c"#1\00\00\00\00\00\00\00\00\00\00\00", align 1
@ATTR_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TYPELIB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_typelib*)* @save_all_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_all_changes(%struct.sltg_typelib* %0) #0 {
  %2 = alloca %struct.sltg_typelib*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [13 x i8], align 1
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %2, align 8
  %7 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %8 = call i32 @sltg_write_header(%struct.sltg_typelib* %7, i32* %3)
  %9 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %10 = call i32 @sltg_write_typeinfo(%struct.sltg_typelib* %9)
  %11 = load i64, i64* @output_buffer, align 8
  %12 = load i32, i32* @output_buffer_pos, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %4, align 8
  %16 = load i32, i32* @output_buffer_pos, align 4
  %17 = call i32 @chat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @put_data(i32* %3, i32 4)
  %19 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %20 = call i32 @sltg_write_helpstrings(%struct.sltg_typelib* %19)
  %21 = load i32, i32* @output_buffer_pos, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @chat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %29 = call i32 @sltg_write_nametable(%struct.sltg_typelib* %28)
  %30 = call i32 (...) @sltg_write_remainder()
  %31 = load i32, i32* @typelib_name, align 4
  %32 = call i64 @strendswith(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %1
  %35 = bitcast [13 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.save_all_changes.typelib_id, i32 0, i32 0), i64 13, i1 false)
  %36 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %37 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATTR_ID, align 4
  %42 = call %struct.TYPE_4__* @get_attrp(i32 %40, i32 %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %34
  %52 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %53 = call i32 @add_output_to_resources(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %55 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @output_typelib_regscript(%struct.TYPE_5__* %56)
  br label %61

58:                                               ; preds = %1
  %59 = load i32, i32* @typelib_name, align 4
  %60 = call i32 @flush_output_buffer(i32 %59)
  br label %61

61:                                               ; preds = %58, %51
  ret void
}

declare dso_local i32 @sltg_write_header(%struct.sltg_typelib*, i32*) #1

declare dso_local i32 @sltg_write_typeinfo(%struct.sltg_typelib*) #1

declare dso_local i32 @chat(i8*, i32) #1

declare dso_local i32 @put_data(i32*, i32) #1

declare dso_local i32 @sltg_write_helpstrings(%struct.sltg_typelib*) #1

declare dso_local i32 @sltg_write_nametable(%struct.sltg_typelib*) #1

declare dso_local i32 @sltg_write_remainder(...) #1

declare dso_local i64 @strendswith(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @get_attrp(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @add_output_to_resources(i8*, i8*) #1

declare dso_local i32 @output_typelib_regscript(%struct.TYPE_5__*) #1

declare dso_local i32 @flush_output_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
