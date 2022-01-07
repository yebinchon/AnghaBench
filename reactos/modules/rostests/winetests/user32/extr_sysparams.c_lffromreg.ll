; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_lffromreg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_lffromreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Key \22%s\22 value \22%s\22 not found\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LF_FACESIZE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_6__*)* @lffromreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lffromreg(i8* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %14 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @RegOpenKeyA(i32 %14, i8* %15, i32* %8)
  store i64 56, i64* %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = ptrtoint %struct.TYPE_5__* %9 to i32
  %20 = call i64 @RegQueryValueExA(i32 %17, i8* %18, i32* null, i64* %12, i32 %19, i64* %11)
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @RegCloseKey(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %182

35:                                               ; preds = %3
  %36 = load i64, i64* %11, align 8
  %37 = icmp ule i64 %36, 56
  br i1 %37, label %38, label %113

38:                                               ; preds = %35
  %39 = bitcast %struct.TYPE_5__* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %13, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 12
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @LF_FACESIZE, align 4
  %112 = call i32 @memcpy(i32 %107, i32 %110, i32 %111)
  br label %180

113:                                              ; preds = %35
  %114 = load i64, i64* %11, align 8
  %115 = icmp ule i64 %114, 56
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = bitcast %struct.TYPE_5__* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %7, align 8
  br label %179

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 13
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 13
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 12
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 10
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @CP_ACP, align 4
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @LF_FACESIZE, align 4
  %178 = call i32 @WideCharToMultiByte(i32 %171, i32 0, i32 %173, i32 -1, i32 %176, i32 %177, i32* null, i32* null)
  br label %179

179:                                              ; preds = %118, %116
  br label %180

180:                                              ; preds = %179, %38
  %181 = load i32, i32* @TRUE, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %33
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
