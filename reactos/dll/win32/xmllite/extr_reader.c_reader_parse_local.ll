; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_local.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }

@XmlReadResume_Local = common dso_local global i64 0, align 8
@NC_E_QNAMECOLON = common dso_local global i32 0, align 4
@E_PENDING = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i64)* @reader_parse_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_local(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @XmlReadResume_Local, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @XmlReadResume_Local, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = call i8* @reader_get_ptr(%struct.TYPE_7__* %24)
  store i8* %25, i8** %8, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i8* @reader_get_ptr(%struct.TYPE_7__* %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i64 @reader_get_cur(%struct.TYPE_7__* %29)
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %26, %17
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @is_ncnamechar(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i32 @reader_skipn(%struct.TYPE_7__* %38, i32 1)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = call i8* @reader_get_ptr(%struct.TYPE_7__* %40)
  store i8* %41, i8** %8, align 8
  br label %32

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 58
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @NC_E_QNAMECOLON, align 4
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %45, %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = call i64 @is_reader_pending(%struct.TYPE_7__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @XmlReadResume_Local, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %57, i64* %62, align 8
  %63 = load i32, i32* @E_PENDING, align 4
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %52
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @XmlReadResume_Local, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = call i64 @reader_get_cur(%struct.TYPE_7__* %72)
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %73, %74
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @reader_init_strvalue(i64 %71, i64 %75, i32* %76)
  %78 = load i32, i32* @S_OK, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %70, %56, %50
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i8* @reader_get_ptr(%struct.TYPE_7__*) #1

declare dso_local i64 @reader_get_cur(%struct.TYPE_7__*) #1

declare dso_local i64 @is_ncnamechar(i8 signext) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @is_reader_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
