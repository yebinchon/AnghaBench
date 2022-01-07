; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonParseCached.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonParseCached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i64, i64 }

@JSON_CACHE_SZ = common dso_local global i32 0, align 4
@JSON_CACHE_ID = common dso_local global i64 0, align 8
@jsonParseFree = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32**, i32*)* @jsonParseCached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @jsonParseCached(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @sqlite3_value_text(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sqlite3_value_bytes(i32* %23)
  store i32 %24, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 4294967295, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %164

28:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %89, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @JSON_CACHE_SZ, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* @JSON_CACHE_ID, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i64 @sqlite3_get_auxdata(i32* %34, i64 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %10, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %13, align 4
  br label %92

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = icmp eq %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @memcmp(i8* %57, i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %11, align 8
  br label %78

66:                                               ; preds = %54, %48, %45
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %29

92:                                               ; preds = %43, %29
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %15, align 8
  %99 = add nsw i64 %98, 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %4, align 8
  br label %164

103:                                              ; preds = %92
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 32, %105
  %107 = add i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = call %struct.TYPE_8__* @sqlite3_malloc64(i32 %108)
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %10, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = icmp eq %struct.TYPE_8__* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @sqlite3_result_error_nomem(i32* %113)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %164

115:                                              ; preds = %103
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = call i32 @memset(%struct.TYPE_8__* %116, i32 0, i32 32)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 1
  %120 = bitcast %struct.TYPE_8__* %119 to i8*
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @memcpy(i8* %125, i8* %126, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @jsonParse(%struct.TYPE_8__* %130, i32* %131, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %115
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = call i32 @sqlite3_free(%struct.TYPE_8__* %138)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %164

140:                                              ; preds = %115
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* %15, align 8
  %145 = add nsw i64 %144, 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i64, i64* @JSON_CACHE_ID, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %154 = load i64, i64* @jsonParseFree, align 8
  %155 = inttoptr i64 %154 to void (i8*)*
  %156 = call i32 @sqlite3_set_auxdata(i32* %148, i64 %152, %struct.TYPE_8__* %153, void (i8*)* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = load i64, i64* @JSON_CACHE_ID, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = call i64 @sqlite3_get_auxdata(i32* %157, i64 %161)
  %163 = inttoptr i64 %162 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %4, align 8
  br label %164

164:                                              ; preds = %140, %137, %112, %95, %27
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %165
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_get_auxdata(i32*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @jsonParse(%struct.TYPE_8__*, i32*, i8*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3_set_auxdata(i32*, i64, %struct.TYPE_8__*, void (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
