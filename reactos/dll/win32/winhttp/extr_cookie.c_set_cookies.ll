; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_set_cookies.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_cookie.c_set_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.attr = type { i8*, i32 }

@set_cookies.pathW = internal constant [5 x i8] c"path\00", align 1
@set_cookies.domainW = internal constant [7 x i8] c"domain\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unhandled attribute %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cookies(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.attr*, align 8
  %12 = alloca %struct.attr*, align 8
  %13 = alloca %struct.attr*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %6, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.attr* null, %struct.attr** %12, align 8
  store %struct.attr* null, %struct.attr** %13, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlenW(i8* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = call i8* @heap_alloc(i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %188

35:                                               ; preds = %2
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcpyW(i8* %36, i8* %37)
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %52, %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 59
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %40

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 59
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  store i8 0, i8* %61, align 1
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i8*, i8** %7, align 8
  %65 = call i32* @parse_cookie(i8* %64)
  store i32* %65, i32** %15, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @heap_free(i8* %68)
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %3, align 4
  br label %188

71:                                               ; preds = %63
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strlenW(i8* %72)
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %114, %71
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %8, align 8
  %79 = call %struct.attr* @parse_attr(i8* %78, i32* %17)
  store %struct.attr* %79, %struct.attr** %11, align 8
  %80 = icmp ne %struct.attr* %79, null
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  br i1 %82, label %83, label %122

83:                                               ; preds = %81
  %84 = load %struct.attr*, %struct.attr** %11, align 8
  %85 = getelementptr inbounds %struct.attr, %struct.attr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @strcmpiW(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @set_cookies.domainW, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load %struct.attr*, %struct.attr** %11, align 8
  store %struct.attr* %90, %struct.attr** %12, align 8
  %91 = load %struct.attr*, %struct.attr** %11, align 8
  %92 = getelementptr inbounds %struct.attr, %struct.attr* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %9, align 8
  br label %114

94:                                               ; preds = %83
  %95 = load %struct.attr*, %struct.attr** %11, align 8
  %96 = getelementptr inbounds %struct.attr, %struct.attr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @strcmpiW(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_cookies.pathW, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %94
  %101 = load %struct.attr*, %struct.attr** %11, align 8
  store %struct.attr* %101, %struct.attr** %13, align 8
  %102 = load %struct.attr*, %struct.attr** %11, align 8
  %103 = getelementptr inbounds %struct.attr, %struct.attr* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %10, align 8
  br label %113

105:                                              ; preds = %94
  %106 = load %struct.attr*, %struct.attr** %11, align 8
  %107 = getelementptr inbounds %struct.attr, %struct.attr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @debugstr_w(i32 %108)
  %110 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.attr*, %struct.attr** %11, align 8
  %112 = call i32 @free_attr(%struct.attr* %111)
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %89
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %8, align 8
  br label %74

122:                                              ; preds = %81
  %123 = load i8*, i8** %9, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @strdupW(i32 %130)
  store i8* %131, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %160

134:                                              ; preds = %125, %122
  %135 = load i8*, i8** %10, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @strdupW(i32 %140)
  store i8* %141, i8** %10, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  br label %160

144:                                              ; preds = %137, %134
  %145 = load i8*, i8** %10, align 8
  %146 = call i8* @strrchrW(i8* %145, i8 signext 47)
  store i8* %146, i8** %8, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i8*, i8** %8, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = icmp ne i8* %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i8*, i8** %8, align 8
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %152, %148, %144
  %155 = load i32*, i32** %14, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @add_cookie(i32* %155, i32* %156, i8* %157, i8* %158)
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %154, %143, %133
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @free_cookie(i32* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.attr*, %struct.attr** %12, align 8
  %168 = icmp ne %struct.attr* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.attr*, %struct.attr** %12, align 8
  %171 = call i32 @free_attr(%struct.attr* %170)
  br label %175

172:                                              ; preds = %166
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @heap_free(i8* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load %struct.attr*, %struct.attr** %13, align 8
  %177 = icmp ne %struct.attr* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.attr*, %struct.attr** %13, align 8
  %180 = call i32 @free_attr(%struct.attr* %179)
  br label %184

181:                                              ; preds = %175
  %182 = load i8*, i8** %10, align 8
  %183 = call i32 @heap_free(i8* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @heap_free(i8* %185)
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %184, %67, %33
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32* @parse_cookie(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local %struct.attr* @parse_attr(i8*, i32*) #1

declare dso_local i32 @strcmpiW(i32, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @free_attr(%struct.attr*) #1

declare dso_local i8* @strdupW(i32) #1

declare dso_local i8* @strrchrW(i8*, i8 signext) #1

declare dso_local i32 @add_cookie(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @free_cookie(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
