; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i8* }

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Uri_CREATE_NO_DECODE_EXTRA_INFO = common dso_local global i32 0, align 4
@Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"(%p %p %x %d): Canonicalized query string %s len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32)* @canonicalize_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_query(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %5, align 4
  br label %198

30:                                               ; preds = %4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %11, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %159, %30
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %162

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @Uri_CREATE_NO_DECODE_EXTRA_INFO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %91, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = call signext i8 @decode_pct_val(i8* %66)
  store i8 %67, i8* %13, align 1
  %68 = load i8, i8* %13, align 1
  %69 = call i64 @is_unreserved(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i8, i8* %13, align 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %75, i8* %82, align 1
  br label %83

83:                                               ; preds = %74, %71
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %10, align 8
  br label %159

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %90, %60, %57
  br label %141

92:                                               ; preds = %52
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %140

95:                                               ; preds = %92
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @is_ascii(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @is_unreserved(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %10, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @is_reserved(i8 signext %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %140, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @Uri_CREATE_NO_DECODE_EXTRA_INFO, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %139, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = call i32 @pct_encode_val(i8 signext %125, i8* %132)
  br label %134

134:                                              ; preds = %123, %120
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 3
  store i64 %138, i64* %136, align 8
  br label %159

139:                                              ; preds = %115, %110
  br label %140

140:                                              ; preds = %139, %105, %100, %95, %92
  br label %141

141:                                              ; preds = %140, %91
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141
  %145 = load i8*, i8** %10, align 8
  %146 = load i8, i8* %145, align 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 %146, i8* %153, align 1
  br label %154

154:                                              ; preds = %144, %141
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %154, %134, %83
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %10, align 8
  br label %48

162:                                              ; preds = %48
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = sub i64 %165, %169
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %196, label %175

175:                                              ; preds = %162
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @debugstr_wn(i8* %187, i64 %190)
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %176, %struct.TYPE_8__* %177, i32 %178, i32 %179, i32 %191, i64 %194)
  br label %196

196:                                              ; preds = %175, %162
  %197 = load i32, i32* @TRUE, align 4
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %196, %24
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local signext i8 @decode_pct_val(i8*) #1

declare dso_local i64 @is_unreserved(i8 signext) #1

declare dso_local i64 @is_ascii(i8 signext) #1

declare dso_local i32 @is_reserved(i8 signext) #1

declare dso_local i32 @pct_encode_val(i8 signext, i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32, i64) #1

declare dso_local i32 @debugstr_wn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
