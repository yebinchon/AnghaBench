; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_parse_path_hierarchical.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_parse_path_hierarchical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32, i32 }

@parse_path_hierarchical.slash = internal constant [2 x i8] c"/\00", align 1
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@URL_SCHEME_WILDCARD = common dso_local global i64 0, align 8
@Uri_CREATE_NO_CANONICALIZE = common dso_local global i32 0, align 4
@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@Uri_CREATE_FILE_USE_DOS_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"(%p %p %x): Parsed path %s len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"(%p %p %x): The URI contained no path\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_4__*, i32)* @parse_path_hierarchical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_path_hierarchical(i8** %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @URL_SCHEME_FILE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @is_path_delim(i64 %20, i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* null, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  br label %53

42:                                               ; preds = %32, %26
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @parse_path_hierarchical.slash, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %37
  br label %166

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %138, %88, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @is_path_delim(i64 %58, i8 signext %61)
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %142

65:                                               ; preds = %55
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load i8**, i8*** %5, align 8
  %82 = call i32 @check_pct_encoded(i8** %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = load i8**, i8*** %5, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %4, align 4
  br label %193

88:                                               ; preds = %80
  br label %55

89:                                               ; preds = %77, %71, %65
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @is_forbidden_dos_path_char(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load i8**, i8*** %5, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %4, align 4
  br label %193

107:                                              ; preds = %98, %95, %89
  %108 = load i8**, i8*** %5, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 92
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @URL_SCHEME_FILE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** %8, align 8
  %132 = load i8**, i8*** %5, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %4, align 4
  br label %193

134:                                              ; preds = %124, %118
  br label %135

135:                                              ; preds = %134, %113
  br label %136

136:                                              ; preds = %135, %107
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  %139 = load i8**, i8*** %5, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %139, align 8
  br label %55

142:                                              ; preds = %55
  %143 = load i8**, i8*** %5, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = icmp eq i8* %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i8* null, i8** %149, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  br label %165

152:                                              ; preds = %142
  %153 = load i8*, i8** %8, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %152, %147
  br label %166

166:                                              ; preds = %165, %53
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %186

171:                                              ; preds = %166
  %172 = load i8**, i8*** %5, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @debugstr_wn(i8* %177, i32 %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, i8**, %struct.TYPE_4__*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %172, %struct.TYPE_4__* %173, i32 %174, i32 %181, i32 %184)
  br label %191

186:                                              ; preds = %166
  %187 = load i8**, i8*** %5, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (i8*, i8**, %struct.TYPE_4__*, i32, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %187, %struct.TYPE_4__* %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %171
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %130, %103, %84
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i64 @is_path_delim(i64, i8 signext) #1

declare dso_local i32 @check_pct_encoded(i8**) #1

declare dso_local i64 @is_forbidden_dos_path_char(i8 signext) #1

declare dso_local i32 @TRACE(i8*, i8**, %struct.TYPE_4__*, i32, ...) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
