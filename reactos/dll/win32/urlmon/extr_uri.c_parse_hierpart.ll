; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_parse_hierpart.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_parse_hierpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i8*, i8*, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@URL_SCHEME_JAVASCRIPT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"(%p %p %x): Treating URI as an hierarchical URI.\0A\00", align 1
@URL_SCHEME_WILDCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"(%p %p %x): Treating URI as an opaque URI.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.TYPE_8__*, i32)* @parse_hierpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_hierpart(i8** %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @URL_SCHEME_JAVASCRIPT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlenW(i8* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %35, align 8
  %39 = load i8*, i8** @TRUE, align 8
  store i8* %39, i8** %4, align 8
  br label %129

40:                                               ; preds = %3
  %41 = load i8**, i8*** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = call i64 @is_hierarchical_uri(i8** %41, %struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %112

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %108, label %56

56:                                               ; preds = %51, %45
  %57 = load i8**, i8*** %5, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8** %57, %struct.TYPE_8__* %58, i32 %59)
  %61 = load i8*, i8** @FALSE, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %56
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %69
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 47
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i8*, i8** @TRUE, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %91, align 8
  br label %94

94:                                               ; preds = %87, %80, %74
  br label %95

95:                                               ; preds = %94, %69, %56
  %96 = load i8**, i8*** %5, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @parse_authority(i8** %96, %struct.TYPE_8__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** @FALSE, align 8
  store i8* %102, i8** %4, align 8
  br label %129

103:                                              ; preds = %95
  %104 = load i8**, i8*** %5, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i8* @parse_path_hierarchical(i8** %104, %struct.TYPE_8__* %105, i32 %106)
  store i8* %107, i8** %4, align 8
  br label %129

108:                                              ; preds = %51
  %109 = load i8*, i8** %8, align 8
  %110 = load i8**, i8*** %5, align 8
  store i8* %109, i8** %110, align 8
  br label %111

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %40
  %113 = load i8**, i8*** %5, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8** %113, %struct.TYPE_8__* %114, i32 %115)
  %117 = load i8*, i8** @TRUE, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8**, i8*** %5, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @parse_path_opaque(i8** %120, %struct.TYPE_8__* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %112
  %126 = load i8*, i8** @FALSE, align 8
  store i8* %126, i8** %4, align 8
  br label %129

127:                                              ; preds = %112
  %128 = load i8*, i8** @TRUE, align 8
  store i8* %128, i8** %4, align 8
  br label %129

129:                                              ; preds = %127, %125, %103, %101, %19
  %130 = load i8*, i8** %4, align 8
  ret i8* %130
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @is_hierarchical_uri(i8**, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i8**, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @parse_authority(i8**, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @parse_path_hierarchical(i8**, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @parse_path_opaque(i8**, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
