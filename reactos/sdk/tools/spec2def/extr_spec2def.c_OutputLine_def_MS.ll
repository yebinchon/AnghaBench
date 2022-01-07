; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_OutputLine_def_MS.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_OutputLine_def_MS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@gbImportLib = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"=_stub_\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@giArch = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@CC_STDCALL = common dso_local global i64 0, align 8
@CC_FASTCALL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@FL_STUB = common dso_local global i32 0, align 4
@CC_STUB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"=stub_function%d\00", align 1
@gbTracing = common dso_local global i64 0, align 8
@FL_NORELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"=$relaytrace$%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutputLine_def_MS(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = call i32 @PrintName(i32* %5, %struct.TYPE_5__* %6, %struct.TYPE_6__* %8, i32 0)
  %10 = load i64, i64* @gbImportLib, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = call i32 @PrintName(i32* %15, %struct.TYPE_5__* %16, %struct.TYPE_6__* %18, i32 0)
  br label %154

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %87

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 63
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %86

36:                                               ; preds = %26
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @giArch, align 8
  %40 = load i64, i64* @ARCH_X86, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @ScanToken(i8* %46, i8 signext 64)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @ScanToken(i8* %53, i8 signext 64)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CC_STDCALL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CC_FASTCALL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %56
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = call i32 @PrintName(i32* %69, %struct.TYPE_5__* %70, %struct.TYPE_6__* %72, i32 1)
  br label %85

74:                                               ; preds = %62, %49, %42, %36
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %83)
  br label %85

85:                                               ; preds = %74, %68
  br label %86

86:                                               ; preds = %85, %35
  br label %153

87:                                               ; preds = %20
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FL_STUB, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CC_STUB, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94, %87
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 63
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %152

115:                                              ; preds = %100, %94
  %116 = load i64, i64* @gbTracing, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %115
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @FL_NORELAY, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CC_STDCALL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %125
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 63
  br i1 %139, label %140, label %151

140:                                              ; preds = %131
  %141 = load i32*, i32** %3, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i32*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %145, i8* %149)
  br label %151

151:                                              ; preds = %140, %131, %125, %118, %115
  br label %152

152:                                              ; preds = %151, %109
  br label %153

153:                                              ; preds = %152, %86
  br label %154

154:                                              ; preds = %153, %12
  ret void
}

declare dso_local i32 @PrintName(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ScanToken(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
