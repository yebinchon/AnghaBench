; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64* }
%struct.TYPE_13__ = type { i32 }

@XmlReadResume_Name = common dso_local global i64 0, align 8
@WC_E_NAMECHARACTER = common dso_local global i32 0, align 4
@E_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"name %s:%d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @reader_parse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_name(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @XmlReadResume_Name, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @XmlReadResume_Name, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32* @reader_get_ptr(%struct.TYPE_12__* %22)
  store i32* %23, i32** %6, align 8
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i32* @reader_get_ptr(%struct.TYPE_12__* %25)
  store i32* %26, i32** %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call i64 @reader_get_cur(%struct.TYPE_12__* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @is_namestartchar(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @WC_E_NAMECHARACTER, align 4
  store i32 %34, i32* %3, align 4
  br label %81

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %42, %36
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_namechar(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = call i32 @reader_skipn(%struct.TYPE_12__* %43, i32 1)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32* @reader_get_ptr(%struct.TYPE_12__* %45)
  store i32* %46, i32** %6, align 8
  br label %37

47:                                               ; preds = %37
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i64 @is_reader_pending(%struct.TYPE_12__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @XmlReadResume_Name, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %52, i64* %57, align 8
  %58 = load i32, i32* @E_PENDING, align 4
  store i32 %58, i32* %3, align 4
  br label %81

59:                                               ; preds = %47
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @XmlReadResume_Name, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = call i64 @reader_get_cur(%struct.TYPE_12__* %67)
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %68, %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = call i32 @reader_init_strvalue(i64 %66, i64 %70, %struct.TYPE_13__* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = call i32 @debug_strval(%struct.TYPE_12__* %73, %struct.TYPE_13__* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @S_OK, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %65, %51, %33
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32* @reader_get_ptr(%struct.TYPE_12__*) #1

declare dso_local i64 @reader_get_cur(%struct.TYPE_12__*) #1

declare dso_local i32 @is_namestartchar(i32) #1

declare dso_local i64 @is_namechar(i32) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @is_reader_pending(%struct.TYPE_12__*) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debug_strval(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
