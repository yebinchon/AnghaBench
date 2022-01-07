; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/logevent/extr_logevent.c_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/logevent/extr_logevent.c_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@EVENTLOG_SUCCESS = common dso_local global i32 0, align 4
@m_Severity = common dso_local global i32 0, align 4
@EVENTLOG_INFORMATION_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_WARNING_TYPE = common dso_local global i32 0, align 4
@EVENTLOG_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad option %s.\0A\00", align 1
@m_MachineName = common dso_local global i8* null, align 8
@m_Source = common dso_local global i8* null, align 8
@m_Category = common dso_local global i8* null, align 8
@m_EventID = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad option format %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad parameter %s.\0A\00", align 1
@m_Text = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"The event text must be specified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8**)* @ParseCmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseCmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @TRUE, align 8
  store i64 %13, i64* %7, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %9, align 8
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %173, %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %176

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %153

43:                                               ; preds = %33, %23
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %132 [
    i32 115, label %52
    i32 83, label %52
    i32 109, label %92
    i32 77, label %92
    i32 114, label %101
    i32 82, label %101
    i32 99, label %110
    i32 67, label %110
    i32 101, label %120
    i32 69, label %120
    i32 63, label %130
  ]

52:                                               ; preds = %43, %43
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %82 [
    i32 115, label %62
    i32 83, label %62
    i32 105, label %66
    i32 73, label %66
    i32 119, label %70
    i32 87, label %70
    i32 101, label %74
    i32 69, label %74
    i32 102, label %78
    i32 70, label %78
  ]

62:                                               ; preds = %52, %52
  %63 = load i32, i32* @EVENTLOG_SUCCESS, align 4
  store i32 %63, i32* @m_Severity, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %91

66:                                               ; preds = %52, %52
  %67 = load i32, i32* @EVENTLOG_INFORMATION_TYPE, align 4
  store i32 %67, i32* @m_Severity, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %91

70:                                               ; preds = %52, %52
  %71 = load i32, i32* @EVENTLOG_WARNING_TYPE, align 4
  store i32 %71, i32* @m_Severity, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %91

74:                                               ; preds = %52, %52
  %75 = load i32, i32* @EVENTLOG_ERROR_TYPE, align 4
  store i32 %75, i32* @m_Severity, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %91

78:                                               ; preds = %52, %52
  %79 = load i32, i32* @EVENTLOG_ERROR_TYPE, align 4
  store i32 %79, i32* @m_Severity, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %91

82:                                               ; preds = %52
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %87)
  %89 = call i32 (...) @Usage()
  %90 = load i64, i64* @FALSE, align 8
  store i64 %90, i64* %3, align 8
  br label %193

91:                                               ; preds = %78, %74, %70, %66, %62
  br label %141

92:                                               ; preds = %43, %43
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** @m_MachineName, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %141

101:                                              ; preds = %43, %43
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** @m_Source, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %141

110:                                              ; preds = %43, %43
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @atoi(i8* %116)
  store i8* %117, i8** @m_Category, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %141

120:                                              ; preds = %43, %43
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @atoi(i8* %126)
  store i8* %127, i8** @m_EventID, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %141

130:                                              ; preds = %43
  %131 = load i64, i64* @TRUE, align 8
  store i64 %131, i64* %7, align 8
  br label %141

132:                                              ; preds = %43
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %137)
  %139 = call i32 (...) @Usage()
  %140 = load i64, i64* @FALSE, align 8
  store i64 %140, i64* %3, align 8
  br label %193

141:                                              ; preds = %130, %120, %110, %101, %92, %91
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  %151 = load i64, i64* @FALSE, align 8
  store i64 %151, i64* %3, align 8
  br label %193

152:                                              ; preds = %141
  br label %172

153:                                              ; preds = %33
  %154 = load i64, i64* %8, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %161)
  %163 = load i64, i64* @FALSE, align 8
  store i64 %163, i64* %3, align 8
  br label %193

164:                                              ; preds = %153
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** @m_Text, align 8
  %170 = load i64, i64* @TRUE, align 8
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %152
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %19

176:                                              ; preds = %19
  %177 = load i64, i64* %7, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %176
  %180 = load i64, i64* %8, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %184 = load i64, i64* @FALSE, align 8
  store i64 %184, i64* %3, align 8
  br label %193

185:                                              ; preds = %179, %176
  %186 = load i64, i64* %7, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = call i32 (...) @Usage()
  %190 = load i64, i64* @FALSE, align 8
  store i64 %190, i64* %3, align 8
  br label %193

191:                                              ; preds = %185
  %192 = load i64, i64* @TRUE, align 8
  store i64 %192, i64* %3, align 8
  br label %193

193:                                              ; preds = %191, %188, %182, %156, %144, %132, %82
  %194 = load i64, i64* %3, align 8
  ret i64 %194
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
