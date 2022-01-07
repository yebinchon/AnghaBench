; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_spy_init.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_spy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@message = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8 0, align 1
@indent_tls_index = common dso_local global i64 0, align 8
@TLS_OUT_OF_INDEXES = common dso_local global i64 0, align 8
@spy_exclude = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8 0, align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@SPY_MAX_MSGNUM = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Software\\Wine\\Debug\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SpyInclude\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"INCLUDEALL\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Include=%s\0A\00", align 1
@MessageTypeNames = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"SpyExclude\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Exclude=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"EXCLUDEALL\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"SpyExcludeDWP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @spy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @spy_init() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @message, align 4
  %10 = call i32 @TRACE_ON(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = load i8, i8* @FALSE, align 1
  store i8 %13, i8* %1, align 1
  br label %179

14:                                               ; preds = %0
  %15 = load i64, i64* @indent_tls_index, align 8
  %16 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = call i32 (...) @TlsAlloc()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %22 = call i64 @InterlockedCompareExchange(i32* bitcast (i64* @indent_tls_index to i32*), i32 %20, i64 %21)
  %23 = load i64, i64* @TLS_OUT_OF_INDEXES, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TlsFree(i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i64, i64* @spy_exclude, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8, i8* @TRUE, align 1
  store i8 %33, i8* %1, align 1
  br label %179

34:                                               ; preds = %29
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %37 = load i32, i32* @SPY_MAX_MSGNUM, align 4
  %38 = add nsw i32 %37, 2
  %39 = call i8* @HeapAlloc(i32 %35, i32 %36, i32 %38)
  store i8* %39, i8** %5, align 8
  %40 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %41 = call i32 @RegOpenKeyA(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %169, label %43

43:                                               ; preds = %34
  store i32 1024, i32* %8, align 4
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %44, align 16
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %47 = ptrtoint i8* %46 to i32
  %48 = call i32 @RegQueryValueExA(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %7, i32 %47, i32* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %86, %54
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @SPY_MAX_MSGNUM, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load i64*, i64** @MessageTypeNames, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %70 = load i64*, i64** @MessageTypeNames, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @strstr(i8* %69, i64 %74)
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %68, %61
  %79 = phi i1 [ false, %61 ], [ %77, %68 ]
  %80 = zext i1 %79 to i32
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %81, i8* %85, align 1
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  br label %57

89:                                               ; preds = %57
  br label %90

90:                                               ; preds = %89, %50, %43
  store i32 1024, i32* %8, align 4
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %91, align 16
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %94 = ptrtoint i8* %93 to i32
  %95 = call i32 @RegQueryValueExA(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* %7, i32 %94, i32* %8)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %152, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %99 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %114, %103
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @SPY_MAX_MSGNUM, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8, i8* @TRUE, align 1
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %2, align 4
  br label %104

117:                                              ; preds = %104
  br label %151

118:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %147, %118
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @SPY_MAX_MSGNUM, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load i64*, i64** @MessageTypeNames, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %132 = load i64*, i64** @MessageTypeNames, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @strstr(i8* %131, i64 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %130, %123
  %140 = phi i1 [ false, %123 ], [ %138, %130 ]
  %141 = zext i1 %140 to i32
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 %142, i8* %146, align 1
  br label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %2, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %2, align 4
  br label %119

150:                                              ; preds = %119
  br label %151

151:                                              ; preds = %150, %117
  br label %152

152:                                              ; preds = %151, %90
  store i32 1024, i32* %8, align 4
  %153 = load i32, i32* %4, align 4
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %155 = ptrtoint i8* %154 to i32
  %156 = call i32 @RegQueryValueExA(i32 %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* %7, i32 %155, i32* %8)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %160 = call signext i8 @atoi(i8* %159)
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* @SPY_MAX_MSGNUM, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8 %160, i8* %165, align 1
  br label %166

166:                                              ; preds = %158, %152
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @RegCloseKey(i32 %167)
  br label %169

169:                                              ; preds = %166, %34
  %170 = load i8*, i8** %5, align 8
  %171 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i64* @spy_exclude to i8**), i8* %170, i32* null)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = call i32 (...) @GetProcessHeap()
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 @HeapFree(i32 %174, i32 0, i8* %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i8, i8* @TRUE, align 1
  store i8 %178, i8* %1, align 1
  br label %179

179:                                              ; preds = %177, %32, %12
  %180 = load i8, i8* %1, align 1
  ret i8 %180
}

declare dso_local i32 @TRACE_ON(i32) #1

declare dso_local i32 @TlsAlloc(...) #1

declare dso_local i64 @InterlockedCompareExchange(i32*, i32, i64) #1

declare dso_local i32 @TlsFree(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i64) #1

declare dso_local signext i8 @atoi(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i8*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
