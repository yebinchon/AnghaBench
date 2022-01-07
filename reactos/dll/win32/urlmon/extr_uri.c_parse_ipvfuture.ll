; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_parse_ipvfuture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_parse_ipvfuture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@Uri_HOST_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"(%p %p %x): Parsed IPvFuture address %s len=%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_4__*, i32)* @parse_ipvfuture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipvfuture(i8** %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 118
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 86
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %139

24:                                               ; preds = %16, %3
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @is_hexdigit(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %139

37:                                               ; preds = %24
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %38, align 8
  br label %41

41:                                               ; preds = %47, %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @is_hexdigit(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  br label %41

51:                                               ; preds = %41
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 46
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %5, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %139

61:                                               ; preds = %51
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %62, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @is_unreserved(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %61
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @is_subdelim(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 58
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %4, align 4
  br label %139

86:                                               ; preds = %76, %70, %61
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %87, align 8
  br label %90

90:                                               ; preds = %110, %86
  %91 = load i8**, i8*** %5, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @is_unreserved(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %90
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @is_subdelim(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 58
  br label %108

108:                                              ; preds = %102, %96, %90
  %109 = phi i1 [ true, %96 ], [ true, %90 ], [ %107, %102 ]
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %111, align 8
  br label %90

114:                                              ; preds = %108
  %115 = load i32, i32* @Uri_HOST_UNKNOWN, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @debugstr_wn(i8* %121, i32 %128)
  %130 = load i8**, i8*** %5, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %118, %struct.TYPE_4__* %119, i32 %120, i32 %129, i32 %136)
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %114, %82, %57, %33, %22
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @is_hexdigit(i8 signext) #1

declare dso_local i64 @is_unreserved(i8 signext) #1

declare dso_local i64 @is_subdelim(i8 signext) #1

declare dso_local i32 @TRACE(i8*, i8**, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
