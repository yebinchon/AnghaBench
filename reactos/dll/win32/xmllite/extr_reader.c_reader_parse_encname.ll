; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_encname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_encname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@WC_E_ENCNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"encoding name %s\0A\00", align 1
@XmlEncoding_Unknown = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @reader_parse_encname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_encname(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @reader_get_ptr(i32* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp slt i32 %14, 65
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sgt i32 %19, 90
  br i1 %20, label %21, label %33

21:                                               ; preds = %16, %2
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp slt i32 %24, 97
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sgt i32 %29, 122
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @WC_E_ENCNAME, align 4
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %26, %16
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @reader_get_cur(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %45, %33
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @is_wchar_encname(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %39

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @parse_encoding_name(i8* %53, i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @debugstr_wn(i8* %56, i32 %57)
  %59 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @XmlEncoding_Unknown, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %46
  %70 = load i32, i32* @WC_E_ENCNAME, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %46
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @reader_skipn(i32* %72, i32 %73)
  %75 = load i32, i32* @S_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %69, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @reader_get_ptr(i32*) #1

declare dso_local i32 @reader_get_cur(i32*) #1

declare dso_local i64 @is_wchar_encname(i8 signext) #1

declare dso_local i64 @parse_encoding_name(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

declare dso_local i32 @reader_skipn(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
