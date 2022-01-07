; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_typeinfo_block.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_typeinfo_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ATTR_HELPCONTEXT = common dso_local global i32 0, align 4
@ATTR_UUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sltg_typelib*, %struct.TYPE_5__*, i32)* @add_typeinfo_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_typeinfo_block(%struct.sltg_typelib* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.sltg_typelib*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %15 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = call i8* (...) @new_index_name()
  store i8* %16, i8** %7, align 8
  %17 = call i8* (...) @new_index_name()
  store i8* %17, i8** %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATTR_HELPCONTEXT, align 4
  %22 = call i8* @get_attrp(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %14, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATTR_UUID, align 4
  %35 = call i8* @get_attrp(i32 %33, i32 %34)
  %36 = bitcast i8* %35 to i16*
  store i16* %36, i16** %10, align 8
  %37 = load i16*, i16** %10, align 8
  %38 = icmp ne i16* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i16*, i16** %10, align 8
  %41 = bitcast i16* %40 to %struct.TYPE_7__*
  %42 = bitcast %struct.TYPE_7__* %13 to i8*
  %43 = bitcast %struct.TYPE_7__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %39, %30
  store i32 44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @xmalloc(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i16*
  store i16* %48, i16** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call signext i16 @strlen(i8* %49)
  %51 = load i16*, i16** %10, align 8
  %52 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %52, i16** %10, align 8
  store i16 %50, i16* %51, align 2
  %53 = load i16*, i16** %10, align 8
  %54 = bitcast i16* %53 to i8*
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @strcpy(i8* %54, i8* %55)
  %57 = load i16*, i16** %10, align 8
  %58 = bitcast i16* %57 to i8*
  %59 = load i8*, i8** %7, align 8
  %60 = call signext i16 @strlen(i8* %59)
  %61 = sext i16 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = bitcast i8* %63 to i16*
  store i16* %64, i16** %10, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call signext i16 @strlen(i8* %65)
  %67 = load i16*, i16** %10, align 8
  %68 = getelementptr inbounds i16, i16* %67, i32 1
  store i16* %68, i16** %10, align 8
  store i16 %66, i16* %67, align 2
  %69 = load i16*, i16** %10, align 8
  %70 = bitcast i16* %69 to i8*
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcpy(i8* %70, i8* %71)
  %73 = load i16*, i16** %10, align 8
  %74 = bitcast i16* %73 to i8*
  %75 = load i8*, i8** %8, align 8
  %76 = call signext i16 @strlen(i8* %75)
  %77 = sext i16 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = bitcast i8* %79 to i16*
  store i16* %80, i16** %10, align 8
  %81 = load i16*, i16** %10, align 8
  %82 = getelementptr inbounds i16, i16* %81, i32 1
  store i16* %82, i16** %10, align 8
  store i16 -1, i16* %81, align 2
  %83 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @add_name(%struct.sltg_typelib* %83, i32 %86)
  %88 = trunc i32 %87 to i16
  %89 = load i16*, i16** %10, align 8
  %90 = getelementptr inbounds i16, i16* %89, i32 1
  store i16* %90, i16** %10, align 8
  store i16 %88, i16* %89, align 2
  %91 = load i16*, i16** %10, align 8
  %92 = getelementptr inbounds i16, i16* %91, i32 1
  store i16* %92, i16** %10, align 8
  store i16 0, i16* %91, align 2
  %93 = load i16*, i16** %10, align 8
  %94 = getelementptr inbounds i16, i16* %93, i32 1
  store i16* %94, i16** %10, align 8
  store i16 -1, i16* %93, align 2
  %95 = load i32, i32* %12, align 4
  %96 = load i16*, i16** %10, align 8
  %97 = bitcast i16* %96 to i32*
  store i32 %95, i32* %97, align 4
  %98 = load i16*, i16** %10, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 2
  store i16* %99, i16** %10, align 8
  %100 = load i16*, i16** %10, align 8
  %101 = getelementptr inbounds i16, i16* %100, i32 1
  store i16* %101, i16** %10, align 8
  store i16 -1, i16* %100, align 2
  %102 = load i16*, i16** %10, align 8
  %103 = bitcast i16* %102 to %struct.TYPE_7__*
  %104 = bitcast %struct.TYPE_7__* %103 to i8*
  %105 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  %106 = load i16*, i16** %10, align 8
  %107 = getelementptr inbounds i16, i16* %106, i64 2
  store i16* %107, i16** %10, align 8
  %108 = load i32, i32* %6, align 4
  %109 = trunc i32 %108 to i16
  %110 = load i16*, i16** %10, align 8
  store i16 %109, i16* %110, align 2
  %111 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @sltg_add_typeinfo(%struct.sltg_typelib* %111, i8* %112, i32 %113, i8* %114)
  %116 = load i8*, i8** %7, align 8
  ret i8* %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @new_index_name(...) #2

declare dso_local i8* @get_attrp(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xmalloc(i32) #2

declare dso_local signext i16 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @add_name(%struct.sltg_typelib*, i32) #2

declare dso_local i32 @sltg_add_typeinfo(%struct.sltg_typelib*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
