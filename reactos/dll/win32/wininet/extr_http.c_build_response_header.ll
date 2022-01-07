; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_build_response_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_build_response_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@build_response_header.colonW = internal constant [3 x i8] c": \00", align 1
@build_response_header.crW = internal constant [2 x i8] c"\0D\00", align 1
@build_response_header.lfW = internal constant [2 x i8] c"\0A\00", align 1
@build_response_header.status_fmt = internal constant [5 x i8] c" %u \00", align 1
@HDR_ISREQUEST = common dso_local global i32 0, align 4
@szStatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Adding custom header %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i64)* @build_response_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_response_header(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [14 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = call i32 @EnterCriticalSection(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 5
  %18 = add nsw i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i8** @heap_alloc(i32 %21)
  store i8** %22, i8*** %6, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = call i32 @LeaveCriticalSection(i32* %26)
  store i8* null, i8** %3, align 8
  br label %184

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  %40 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %36, i8** %40, align 8
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sprintfW(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @build_response_header.status_fmt, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %47 = load i8**, i8*** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  %50 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %46, i8** %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  %57 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %53, i8** %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %33
  %61 = load i8**, i8*** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %10, align 8
  %64 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_response_header.crW, i64 0, i64 0), i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %33
  %66 = load i8**, i8*** %6, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  %69 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_response_header.lfW, i64 0, i64 0), i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %28
  store i64 0, i64* %9, align 8
  br label %71

71:                                               ; preds = %157, %70
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %160

78:                                               ; preds = %71
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @HDR_ISREQUEST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %156, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @szStatus, align 4
  %98 = call i64 @strcmpW(i8* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %89
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i8**, i8*** %6, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  %111 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8* %107, i8** %111, align 8
  %112 = load i8**, i8*** %6, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  %115 = getelementptr inbounds i8*, i8** %112, i64 %113
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @build_response_header.colonW, i64 0, i64 0), i8** %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load i8**, i8*** %6, align 8
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %10, align 8
  %126 = getelementptr inbounds i8*, i8** %123, i64 %124
  store i8* %122, i8** %126, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %100
  %130 = load i8**, i8*** %6, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  %133 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_response_header.crW, i64 0, i64 0), i8** %133, align 8
  br label %134

134:                                              ; preds = %129, %100
  %135 = load i8**, i8*** %6, align 8
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %10, align 8
  %138 = getelementptr inbounds i8*, i8** %135, i64 %136
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_response_header.lfW, i64 0, i64 0), i8** %138, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @debugstr_w(i8* %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @debugstr_w(i8* %153)
  %155 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %154)
  br label %156

156:                                              ; preds = %134, %89, %78
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %9, align 8
  br label %71

160:                                              ; preds = %71
  %161 = load i64, i64* %5, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i8**, i8*** %6, align 8
  %165 = load i64, i64* %10, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %10, align 8
  %167 = getelementptr inbounds i8*, i8** %164, i64 %165
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_response_header.crW, i64 0, i64 0), i8** %167, align 8
  br label %168

168:                                              ; preds = %163, %160
  %169 = load i8**, i8*** %6, align 8
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %10, align 8
  %172 = getelementptr inbounds i8*, i8** %169, i64 %170
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_response_header.lfW, i64 0, i64 0), i8** %172, align 8
  %173 = load i8**, i8*** %6, align 8
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 %174
  store i8* null, i8** %175, align 8
  %176 = load i8**, i8*** %6, align 8
  %177 = call i8* @HTTP_build_req(i8** %176, i32 0)
  store i8* %177, i8** %7, align 8
  %178 = load i8**, i8*** %6, align 8
  %179 = call i32 @heap_free(i8** %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = call i32 @LeaveCriticalSection(i32* %181)
  %183 = load i8*, i8** %7, align 8
  store i8* %183, i8** %3, align 8
  br label %184

184:                                              ; preds = %168, %24
  %185 = load i8*, i8** %3, align 8
  ret i8* %185
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i8** @heap_alloc(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i64 @strcmpW(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8* @HTTP_build_req(i8**, i32) #1

declare dso_local i32 @heap_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
