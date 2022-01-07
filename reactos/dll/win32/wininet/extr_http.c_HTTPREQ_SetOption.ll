; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_SetOption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_SetOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Undocumented option 99\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SECURITY_SET_MASK = common dso_local global i32 0, align 4
@ERROR_INTERNET_OPTION_NOT_SETTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"INTERNET_OPTION_SECURITY_FLAGS %08x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @HTTPREQ_SetOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTPREQ_SetOption(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %202 [
    i32 99, label %15
    i32 130, label %36
    i32 135, label %74
    i32 129, label %90
    i32 131, label %106
    i32 128, label %122
    i32 134, label %140
    i32 132, label %158
    i32 133, label %180
  ]

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %24, i32* %5, align 4
  br label %208

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SECURITY_SET_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @ERROR_INTERNET_OPTION_NOT_SETTABLE, align 4
  store i32 %34, i32* %5, align 4
  br label %208

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %4, %35
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %44, i32* %5, align 4
  br label %208

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @SECURITY_SET_MASK, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @is_valid_netconn(%struct.TYPE_8__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %45
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %45
  %73 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %73, i32* %5, align 4
  br label %208

74:                                               ; preds = %4
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 4
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %74
  %82 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %82, i32* %5, align 4
  br label %208

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %89, i32* %5, align 4
  br label %208

90:                                               ; preds = %4
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %95, 4
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %90
  %98 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %98, i32* %5, align 4
  br label %208

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %105, i32* %5, align 4
  br label %208

106:                                              ; preds = %4
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %106
  %114 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %114, i32* %5, align 4
  br label %208

115:                                              ; preds = %109
  %116 = load i8*, i8** %8, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %121, i32* %5, align 4
  br label %208

122:                                              ; preds = %4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @heap_free(i8* %127)
  %129 = load i8*, i8** %8, align 8
  %130 = call i8* @heap_strdupW(i8* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i8* %130, i8** %134, align 8
  %135 = icmp ne i8* %130, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %122
  %137 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %137, i32* %5, align 4
  br label %208

138:                                              ; preds = %122
  %139 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %139, i32* %5, align 4
  br label %208

140:                                              ; preds = %4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @heap_free(i8* %145)
  %147 = load i8*, i8** %8, align 8
  %148 = call i8* @heap_strdupW(i8* %147)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i8* %148, i8** %152, align 8
  %153 = icmp ne i8* %148, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %140
  %155 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %155, i32* %5, align 4
  br label %208

156:                                              ; preds = %140
  %157 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %157, i32* %5, align 4
  br label %208

158:                                              ; preds = %4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @heap_free(i8* %165)
  %167 = load i8*, i8** %8, align 8
  %168 = call i8* @heap_strdupW(i8* %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  store i8* %168, i8** %174, align 8
  %175 = icmp ne i8* %168, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %158
  %177 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %177, i32* %5, align 4
  br label %208

178:                                              ; preds = %158
  %179 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %179, i32* %5, align 4
  br label %208

180:                                              ; preds = %4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @heap_free(i8* %187)
  %189 = load i8*, i8** %8, align 8
  %190 = call i8* @heap_strdupW(i8* %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  store i8* %190, i8** %196, align 8
  %197 = icmp ne i8* %190, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %180
  %199 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %199, i32* %5, align 4
  br label %208

200:                                              ; preds = %180
  %201 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %201, i32* %5, align 4
  br label %208

202:                                              ; preds = %4
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @INET_SetOption(i32* %203, i32 %204, i8* %205, i32 %206)
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %202, %200, %198, %178, %176, %156, %154, %138, %136, %115, %113, %99, %97, %83, %81, %72, %43, %33, %23
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @is_valid_netconn(%struct.TYPE_8__*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @heap_strdupW(i8*) #1

declare dso_local i32 @INET_SetOption(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
