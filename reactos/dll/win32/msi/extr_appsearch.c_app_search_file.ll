; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_app_search_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_app_search_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@szBackSlash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*)* @app_search_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @app_search_file(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @PathRemoveFileSpecW(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @PathAddBackslashW(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @GetFileAttributesW(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @strdupW(i32* %32)
  store i32* %33, i32** %3, align 8
  br label %159

34:                                               ; preds = %26, %16
  store i32* null, i32** %3, align 8
  br label %159

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @GetFileAttributesW(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %35
  store i32* null, i32** %3, align 8
  br label %159

47:                                               ; preds = %41
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @GetFileVersionInfoSizeW(i32* %48, i32* %8)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @strdupW(i32* %53)
  store i32* %54, i32** %3, align 8
  br label %159

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @msi_alloc(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32* null, i32** %3, align 8
  br label %159

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @GetFileVersionInfoW(i32* %62, i32 0, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %155

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @szBackSlash, align 4
  %71 = ptrtoint %struct.TYPE_4__** %6 to i32
  %72 = call i32 @VerQueryValueW(i32 %69, i32 %70, i32 %71, i32* %9)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74, %68
  br label %155

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %155

97:                                               ; preds = %88
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %155

114:                                              ; preds = %105, %97
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %155

134:                                              ; preds = %125
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %155

151:                                              ; preds = %142, %134
  br label %152

152:                                              ; preds = %151, %120
  %153 = load i32*, i32** %4, align 8
  %154 = call i32* @strdupW(i32* %153)
  store i32* %154, i32** %10, align 8
  br label %155

155:                                              ; preds = %152, %150, %133, %113, %96, %77, %67
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @msi_free(i32 %156)
  %158 = load i32*, i32** %10, align 8
  store i32* %158, i32** %3, align 8
  br label %159

159:                                              ; preds = %155, %60, %52, %46, %34, %31
  %160 = load i32*, i32** %3, align 8
  ret i32* %160
}

declare dso_local i32 @PathRemoveFileSpecW(i32*) #1

declare dso_local i32 @PathAddBackslashW(i32*) #1

declare dso_local i32 @GetFileAttributesW(i32*) #1

declare dso_local i32* @strdupW(i32*) #1

declare dso_local i32 @GetFileVersionInfoSizeW(i32*, i32*) #1

declare dso_local i32 @msi_alloc(i32) #1

declare dso_local i32 @GetFileVersionInfoW(i32*, i32, i32, i32) #1

declare dso_local i32 @VerQueryValueW(i32, i32, i32, i32*) #1

declare dso_local i32 @msi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
