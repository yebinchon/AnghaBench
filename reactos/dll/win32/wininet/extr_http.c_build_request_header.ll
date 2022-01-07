; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_build_request_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_build_request_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@build_request_header.szSpace = internal constant [2 x i8] c" \00", align 1
@build_request_header.szColon = internal constant [3 x i8] c": \00", align 1
@build_request_header.szCr = internal constant [2 x i8] c"\0D\00", align 1
@build_request_header.szLf = internal constant [2 x i8] c"\0A\00", align 1
@HDR_ISREQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Adding custom header %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*, i8*, i8*, i64)* @build_request_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_request_header(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = call i32 @EnterCriticalSection(i32* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 5
  %24 = add nsw i32 %23, 10
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i8** @heap_alloc(i32 %28)
  store i8** %29, i8*** %15, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @LeaveCriticalSection(i32* %33)
  store i8* null, i8** %6, align 8
  br label %188

35:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8**, i8*** %15, align 8
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  store i8* %36, i8** %41, align 8
  %42 = load i8**, i8*** %15, align 8
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szSpace, i64 0, i64 0), i8** %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8**, i8*** %15, align 8
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %47, i8** %52, align 8
  %53 = load i8**, i8*** %15, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szSpace, i64 0, i64 0), i8** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8**, i8*** %15, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  store i8* %58, i8** %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %35
  %67 = load i8**, i8*** %15, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szCr, i64 0, i64 0), i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %35
  %73 = load i8**, i8*** %15, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szLf, i64 0, i64 0), i8** %77, align 8
  store i64 0, i64* %16, align 8
  br label %78

78:                                               ; preds = %158, %72
  %79 = load i64, i64* %16, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %161

85:                                               ; preds = %78
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @HDR_ISREQUEST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %157

96:                                               ; preds = %85
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8**, i8*** %15, align 8
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* %103, i8** %108, align 8
  %109 = load i8**, i8*** %15, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @build_request_header.szColon, i64 0, i64 0), i8** %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i64, i64* %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %15, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  store i8* %120, i8** %125, align 8
  %126 = load i64, i64* %11, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %96
  %129 = load i8**, i8*** %15, align 8
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szCr, i64 0, i64 0), i8** %133, align 8
  br label %134

134:                                              ; preds = %128, %96
  %135 = load i8**, i8*** %15, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szLf, i64 0, i64 0), i8** %139, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i64, i64* %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @debugstr_w(i8* %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @debugstr_w(i8* %154)
  %156 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %155)
  br label %157

157:                                              ; preds = %134, %85
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %16, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %16, align 8
  br label %78

161:                                              ; preds = %78
  %162 = load i64, i64* %11, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i8**, i8*** %15, align 8
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szCr, i64 0, i64 0), i8** %169, align 8
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i8**, i8*** %15, align 8
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_request_header.szLf, i64 0, i64 0), i8** %175, align 8
  %176 = load i8**, i8*** %15, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* null, i8** %179, align 8
  %180 = load i8**, i8*** %15, align 8
  %181 = call i8* @HTTP_build_req(i8** %180, i32 4)
  store i8* %181, i8** %12, align 8
  %182 = load i8**, i8*** %15, align 8
  %183 = call i32 @heap_free(i8** %182)
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = call i32 @LeaveCriticalSection(i32* %185)
  %187 = load i8*, i8** %12, align 8
  store i8* %187, i8** %6, align 8
  br label %188

188:                                              ; preds = %170, %31
  %189 = load i8*, i8** %6, align 8
  ret i8* %189
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i8** @heap_alloc(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

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
