; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdlgs2.c_FillVersionList.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdlgs2.c_FillVersionList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@IDD_VERSION_KEY = common dso_local global i32 0, align 4
@CHAR_NULL = common dso_local global i8* null, align 8
@szVersionKey = common dso_local global i8** null, align 8
@VER_KEY_END = common dso_local global i32 0, align 4
@lpVersionBuffer = common dso_local global i32 0, align 4
@szFileVersion = common dso_local global i64 0, align 8
@szLegalCopyright = common dso_local global i64 0, align 8
@MAX_VERNAMES = common dso_local global i64 0, align 8
@vernames = common dso_local global %struct.TYPE_2__* null, align 8
@hAppInstance = common dso_local global i32 0, align 4
@szMessage = common dso_local global i64 0, align 8
@LB_ADDSTRING = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@lpXlate = common dso_local global i32* null, align 8
@pszXlate = common dso_local global i8** null, align 8
@cXlate = common dso_local global i32 0, align 4
@IDS_VN_LANGUAGE = common dso_local global i32 0, align 4
@IDS_VN_LANGUAGES = common dso_local global i32 0, align 4
@cchXlateString = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@LB_SETCURSEL = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@LBN_SELCHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FillVersionList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IDD_VERSION_KEY, align 4
  %14 = call i32 @GetDlgItem(i32 %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** @CHAR_NULL, align 8
  %16 = load i8**, i8*** @szVersionKey, align 8
  %17 = load i32, i32* @VER_KEY_END, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  store i8* %15, i8** %20, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %92, %1
  %22 = load i32, i32* @lpVersionBuffer, align 4
  %23 = load i8**, i8*** @szVersionKey, align 8
  %24 = load i64, i64* %8, align 8
  %25 = bitcast i64* %4 to i32*
  %26 = bitcast i64* %5 to i32*
  %27 = call i64 @VerQueryValueIndexW(i32 %22, i8** %23, i64 %24, i32* %25, i32* %26, i32* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %95

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @szFileVersion, align 8
  %32 = call i32 @lstrcmp(i64 %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @szLegalCopyright, align 8
  %37 = call i32 @lstrcmp(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29
  br label %92

40:                                               ; preds = %34
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @MAX_VERNAMES, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vernames, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @lstrcmp(i64 %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %59

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %41

59:                                               ; preds = %54, %41
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @MAX_VERNAMES, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i32, i32* @hAppInstance, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vernames, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @szMessage, align 8
  %71 = load i64, i64* @szMessage, align 8
  %72 = call i32 @COUNTOF(i64 %71)
  %73 = call i64 @LoadString(i32 %64, i32 %69, i64 %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i64, i64* @szMessage, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %63, %59
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @LB_ADDSTRING, align 4
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @SendMessage(i32 %78, i32 %79, i64 0, i64 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @LB_ERR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @LB_SETITEMDATA, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @SendMessage(i32 %86, i32 %87, i64 %88, i64 %89)
  br label %91

91:                                               ; preds = %85, %77
  br label %92

92:                                               ; preds = %91, %39
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %21

95:                                               ; preds = %21
  %96 = load i32*, i32** @lpXlate, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i8**, i8*** @pszXlate, align 8
  %100 = icmp eq i8** %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  br label %191

102:                                              ; preds = %98
  %103 = load i32, i32* @hAppInstance, align 4
  %104 = load i32, i32* @cXlate, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @IDS_VN_LANGUAGE, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @IDS_VN_LANGUAGES, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load i64, i64* @szMessage, align 8
  %113 = load i64, i64* @szMessage, align 8
  %114 = call i32 @COUNTOF(i64 %113)
  %115 = call i64 @LoadString(i32 %103, i32 %111, i64 %112, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %191

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @LB_ADDSTRING, align 4
  %121 = load i64, i64* @szMessage, align 8
  %122 = call i64 @SendMessage(i32 %119, i32 %120, i64 0, i64 %121)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @LB_ERR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %191

127:                                              ; preds = %118
  %128 = load i8*, i8** @CHAR_NULL, align 8
  %129 = load i8**, i8*** @pszXlate, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  store i8* %128, i8** %130, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %131

131:                                              ; preds = %176, %127
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* @cXlate, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %179

136:                                              ; preds = %131
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 2
  %139 = load i64, i64* @cchXlateString, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %179

142:                                              ; preds = %136
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i8**, i8*** @pszXlate, align 8
  %147 = call i32 @TEXT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %148 = call i32 @lstrcat(i8** %146, i32 %147)
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 2
  store i64 %150, i64* %9, align 8
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i32*, i32** @lpXlate, align 8
  %153 = load i64, i64* %7, align 8
  %154 = mul i64 %153, 2
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i8**, i8*** @pszXlate, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i64, i64* @cchXlateString, align 8
  %161 = load i64, i64* %9, align 8
  %162 = sub i64 %160, %161
  %163 = call i64 @VerLanguageName(i32 %156, i8** %159, i64 %162)
  %164 = load i64, i64* @cchXlateString, align 8
  %165 = load i64, i64* %9, align 8
  %166 = sub i64 %164, %165
  %167 = icmp ugt i64 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %179

169:                                              ; preds = %151
  %170 = load i8**, i8*** @pszXlate, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds i8*, i8** %170, i64 %171
  %173 = call i64 @lstrlen(i8** %172)
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %9, align 8
  br label %176

176:                                              ; preds = %169
  %177 = load i64, i64* %7, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %7, align 8
  br label %131

179:                                              ; preds = %168, %141, %131
  %180 = load i8*, i8** @CHAR_NULL, align 8
  %181 = load i8**, i8*** @pszXlate, align 8
  %182 = load i64, i64* @cchXlateString, align 8
  %183 = sub i64 %182, 1
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %180, i8** %184, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @LB_SETITEMDATA, align 4
  %187 = load i64, i64* %10, align 8
  %188 = load i8**, i8*** @pszXlate, align 8
  %189 = ptrtoint i8** %188 to i64
  %190 = call i64 @SendMessage(i32 %185, i32 %186, i64 %187, i64 %189)
  br label %191

191:                                              ; preds = %179, %126, %117, %101
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @LB_SETCURSEL, align 4
  %194 = call i64 @SendMessage(i32 %192, i32 %193, i64 0, i64 0)
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @WM_COMMAND, align 4
  %197 = load i32, i32* @IDD_VERSION_KEY, align 4
  %198 = load i32, i32* @LBN_SELCHANGE, align 4
  %199 = call i32 @GET_WM_COMMAND_MPS(i32 %197, i32* null, i32 %198)
  %200 = call i32 @PostMessage(i32 %195, i32 %196, i32 %199)
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @VerQueryValueIndexW(i32, i8**, i64, i32*, i32*, i32*) #1

declare dso_local i32 @lstrcmp(i64, i64) #1

declare dso_local i64 @LoadString(i32, i32, i64, i32) #1

declare dso_local i32 @COUNTOF(i64) #1

declare dso_local i64 @SendMessage(i32, i32, i64, i64) #1

declare dso_local i32 @lstrcat(i8**, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @VerLanguageName(i32, i8**, i64) #1

declare dso_local i64 @lstrlen(i8**) #1

declare dso_local i32 @PostMessage(i32, i32, i32) #1

declare dso_local i32 @GET_WM_COMMAND_MPS(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
