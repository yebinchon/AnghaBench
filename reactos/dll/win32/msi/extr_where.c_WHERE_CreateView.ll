; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_CreateView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_CreateView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.expr = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_19__*, i32, i32, %struct.expr*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_20__*, i32*, i64*)*, i32 (%struct.TYPE_20__*)* }

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@where_ops = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"can't create table: %s\0A\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"can't get table dimensions\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WHERE_CreateView(%struct.TYPE_18__* %0, i32** %1, i8* %2, %struct.expr* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.expr*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.expr* %3, %struct.expr** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  store i64 0, i64* %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @debugstr_w(i8* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call %struct.TYPE_17__* @msi_alloc_zero(i32 40)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %10, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %22, i64* %5, align 8
  br label %158

23:                                               ; preds = %4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32* @where_ops, i32** %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = call i32 @msiobj_addref(i32* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.expr*, %struct.expr** %9, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 4
  store %struct.expr* %33, %struct.expr** %35, align 8
  br label %36

36:                                               ; preds = %128, %23
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %131

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = call i8* @strchrW(i8* %41, i8 signext 32)
  store i8* %42, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8*, i8** %13, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %40
  %47 = call %struct.TYPE_19__* @msi_alloc(i32 32)
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %14, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %51, i64* %11, align 8
  br label %153

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = call i64 @TABLE_CreateView(%struct.TYPE_18__* %53, i8* %54, %struct.TYPE_20__** %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @debugstr_w(i8* %62)
  %64 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %66 = call i32 @msi_free(%struct.TYPE_19__* %65)
  %67 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  store i64 %67, i64* %11, align 8
  br label %153

68:                                               ; preds = %52
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64 (%struct.TYPE_20__*, i32*, i64*)*, i64 (%struct.TYPE_20__*, i32*, i64*)** %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = call i64 %75(%struct.TYPE_20__* %78, i32* null, i64* %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %68
  %86 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = call i32 %93(%struct.TYPE_20__* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %99 = call i32 @msi_free(%struct.TYPE_19__* %98)
  br label %153

100:                                              ; preds = %68
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = sext i32 %112 to i64
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  store %struct.TYPE_19__* %119, %struct.TYPE_19__** %121, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %124, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %100
  br label %131

128:                                              ; preds = %100
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %8, align 8
  br label %36

131:                                              ; preds = %127, %36
  %132 = load %struct.expr*, %struct.expr** %9, align 8
  %133 = icmp ne %struct.expr* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = load %struct.expr*, %struct.expr** %9, align 8
  %137 = call i64 @WHERE_VerifyCondition(%struct.TYPE_17__* %135, %struct.expr* %136, i64* %12)
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @ERROR_SUCCESS, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %153

142:                                              ; preds = %134
  %143 = load i64, i64* %12, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %146, i64* %11, align 8
  br label %153

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %131
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %150 = bitcast %struct.TYPE_17__* %149 to i32*
  %151 = load i32**, i32*** %7, align 8
  store i32* %150, i32** %151, align 8
  %152 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %152, i64* %5, align 8
  br label %158

153:                                              ; preds = %145, %141, %85, %61, %50
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = call i32 @WHERE_delete(%struct.TYPE_15__* %155)
  %157 = load i64, i64* %11, align 8
  store i64 %157, i64* %5, align 8
  br label %158

158:                                              ; preds = %153, %148, %21
  %159 = load i64, i64* %5, align 8
  ret i64 %159
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local %struct.TYPE_17__* @msi_alloc_zero(i32) #1

declare dso_local i32 @msiobj_addref(i32*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local %struct.TYPE_19__* @msi_alloc(i32) #1

declare dso_local i64 @TABLE_CreateView(%struct.TYPE_18__*, i8*, %struct.TYPE_20__**) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_19__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @WHERE_VerifyCondition(%struct.TYPE_17__*, %struct.expr*, i64*) #1

declare dso_local i32 @WHERE_delete(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
