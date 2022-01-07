; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_validate_components.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_validate_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__*, i64, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"(%p %p %x): Beginning to validate builder components.\0A\00", align 1
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"(%p %p %x): File schemes can't contain a username or password.\0A\00", align 1
@INET_E_INVALID_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"(%p %p %x): Finished validating builder components.\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i32)* @validate_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_components(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %10 = call i32 @memset(%struct.TYPE_24__* %9, i32 0, i32 32)
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %11, %struct.TYPE_24__* %12, i32 %13)
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @validate_scheme_name(%struct.TYPE_25__* %15, %struct.TYPE_24__* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %183

24:                                               ; preds = %3
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @URL_SCHEME_FILE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = icmp ne %struct.TYPE_23__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %64, label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = icmp ne %struct.TYPE_23__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %57, %47, %40, %30
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @TRACE(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_25__* %65, %struct.TYPE_24__* %66, i32 %67)
  %69 = load i32, i32* @INET_E_INVALID_URL, align 4
  store i32 %69, i32* %4, align 4
  br label %183

70:                                               ; preds = %57, %52
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @validate_userinfo(%struct.TYPE_25__* %72, %struct.TYPE_24__* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %183

81:                                               ; preds = %71
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @validate_host(%struct.TYPE_25__* %82, %struct.TYPE_24__* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @FAILED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %183

91:                                               ; preds = %81
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @setup_port(%struct.TYPE_25__* %92, %struct.TYPE_24__* %93, i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %131, label %100

100:                                              ; preds = %91
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %105
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @URL_SCHEME_FILE, align 8
  %125 = icmp ne i64 %123, %124
  br label %126

126:                                              ; preds = %120, %115, %110, %105, %100
  %127 = phi i1 [ false, %115 ], [ false, %110 ], [ false, %105 ], [ false, %100 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  br label %147

131:                                              ; preds = %91
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %136, %131
  %143 = phi i1 [ false, %131 ], [ %141, %136 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %142, %126
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @validate_path(%struct.TYPE_25__* %148, %struct.TYPE_24__* %149, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @FAILED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %183

157:                                              ; preds = %147
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @validate_query(%struct.TYPE_25__* %158, %struct.TYPE_24__* %159, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i64 @FAILED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %4, align 4
  br label %183

167:                                              ; preds = %157
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @validate_fragment(%struct.TYPE_25__* %168, %struct.TYPE_24__* %169, i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i64 @FAILED(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %4, align 4
  br label %183

177:                                              ; preds = %167
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_25__* %178, %struct.TYPE_24__* %179, i32 %180)
  %182 = load i32, i32* @S_OK, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %177, %175, %165, %155, %89, %79, %64, %22
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @validate_scheme_name(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @validate_userinfo(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @validate_host(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @setup_port(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @validate_path(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @validate_query(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @validate_fragment(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
