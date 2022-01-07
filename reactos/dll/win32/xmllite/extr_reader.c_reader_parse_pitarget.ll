; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_pitarget.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_pitarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64 }

@reader_parse_pitarget.xmlW = internal constant [3 x i8] c"xml", align 1
@reader_parse_pitarget.xmlval = internal constant %struct.TYPE_8__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @reader_parse_pitarget.xmlW, i32 0, i32 0), i32 3, i64 0 }, align 8
@E_PENDING = common dso_local global i32 0, align 4
@WC_E_PI = common dso_local global i32 0, align 4
@WC_E_LEADINGXML = common dso_local global i32 0, align 4
@NC_E_NAMECOLON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pitarget %s:%d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @reader_parse_pitarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_pitarget(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @reader_parse_name(i32* %10, %struct.TYPE_8__* %6)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @FAILED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @is_reader_pending(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @E_PENDING, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @WC_E_PI, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @strval_eq(i32* %26, %struct.TYPE_8__* %6, %struct.TYPE_8__* @reader_parse_pitarget.xmlval)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @WC_E_LEADINGXML, align 4
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @reader_get_strptr(i32* %32, %struct.TYPE_8__* %6)
  store i8* %33, i8** %7, align 8
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %56, %31
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @NC_E_NAMECOLON, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @WC_E_PI, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %3, align 4
  br label %69

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %34

59:                                               ; preds = %34
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @debug_strval(i32* %60, %struct.TYPE_8__* %6)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = bitcast %struct.TYPE_8__* %65 to i8*
  %67 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false)
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %53, %29, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @reader_parse_name(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @is_reader_pending(i32*) #1

declare dso_local i64 @strval_eq(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i8* @reader_get_strptr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debug_strval(i32*, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
