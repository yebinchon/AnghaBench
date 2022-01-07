; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_apply_pair_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_apply_pair_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Glyph 1 resulting cumulative offset is %s design units\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Glyph 1 resulting cumulative advance is %s design units\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Glyph 2 resulting cumulative offset is %s design units\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Glyph 2 resulting cumulative advance is %s design units\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32*, i32, i32*, i32*)* @apply_pair_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_pair_value(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 32, i1 false)
  %19 = bitcast %struct.TYPE_4__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 32, i1 false)
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @GPOS_get_value_record(i32 %20, i32* %21, %struct.TYPE_4__* %15)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %17, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @GPOS_get_value_record(i32 %23, i32* %27, %struct.TYPE_4__* %16)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %7
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @GPOS_get_value_record_offsets(i8* %32, %struct.TYPE_4__* %15, i32 %33, i32 %34, i32* %35, i32* %36)
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @wine_dbgstr_point(i32* %39)
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @wine_dbgstr_point(i32* %43)
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %31, %7
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = call i32 @GPOS_get_value_record_offsets(i8* %50, %struct.TYPE_4__* %16, i32 %51, i32 %52, i32* %54, i32* %56)
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i32 @wine_dbgstr_point(i32* %59)
  %61 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @wine_dbgstr_point(i32* %63)
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %49, %46
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GPOS_get_value_record(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @GPOS_get_value_record_offsets(i8*, %struct.TYPE_4__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @wine_dbgstr_point(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
