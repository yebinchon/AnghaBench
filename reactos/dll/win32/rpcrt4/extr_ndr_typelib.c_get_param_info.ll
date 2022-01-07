; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_param_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_param_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }

@S_OK = common dso_local global i32 0, align 4
@MustSize = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [7 x i8] c"vt %u\0A\00", align 1
@IsSimpleRef = common dso_local global i16 0, align 2
@MustFree = common dso_local global i16 0, align 2
@IsByValue = common dso_local global i16 0, align 2
@IsBasetype = common dso_local global i16 0, align 2
@FC_ENUM32 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unhandled kind %#x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32, i32, i16*, i16*, i8*, %struct.TYPE_8__**)* @get_param_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_param_info(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i16* %4, i16* %5, i8* %6, %struct.TYPE_8__** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_8__**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i16* %4, i16** %14, align 8
  store i16* %5, i16** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_8__** %7, %struct.TYPE_8__*** %17, align 8
  %21 = load i32, i32* @S_OK, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i16*, i16** %14, align 8
  store i16 0, i16* %22, align 2
  %23 = load i16, i16* @MustSize, align 2
  %24 = load i16*, i16** %15, align 8
  store i16 %23, i16* %24, align 2
  %25 = load i8*, i8** %16, align 8
  store i8 0, i8* %25, align 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %149 [
    i32 128, label %35
    i32 136, label %46
    i32 131, label %46
    i32 134, label %46
    i32 130, label %57
    i32 133, label %57
    i32 135, label %57
    i32 132, label %65
    i32 129, label %77
  ]

35:                                               ; preds = %8
  %36 = load i16, i16* @IsSimpleRef, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @MustFree, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %37, %39
  %41 = load i16*, i16** %15, align 8
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, %40
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %41, align 2
  br label %171

46:                                               ; preds = %8, %8, %8
  %47 = load i16, i16* @IsByValue, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @MustFree, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %48, %50
  %52 = load i16*, i16** %15, align 8
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %54, %51
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %52, align 2
  br label %171

57:                                               ; preds = %8, %8, %8
  %58 = load i16, i16* @MustFree, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16*, i16** %15, align 8
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, %59
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %60, align 2
  br label %171

65:                                               ; preds = %8
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i16*, i16** %14, align 8
  %73 = load i16*, i16** %15, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  %76 = call i32 @get_param_pointer_info(i32* %66, i32 %69, i32 %70, i32 %71, i16* %72, i16* %73, i8* %74, %struct.TYPE_8__** %75)
  store i32 %76, i32* %9, align 4
  br label %173

77:                                               ; preds = %8
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %78, i32 %81, i32** %18)
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @ITypeInfo_GetTypeAttr(i32* %83, %struct.TYPE_9__** %20)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %137 [
    i32 138, label %88
    i32 137, label %98
    i32 139, label %126
  ]

88:                                               ; preds = %77
  %89 = load i16, i16* @IsBasetype, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16*, i16** %15, align 8
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = or i32 %93, %90
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %91, align 2
  %96 = load i8, i8* @FC_ENUM32, align 1
  %97 = load i8*, i8** %16, align 8
  store i8 %96, i8* %97, align 1
  br label %143

98:                                               ; preds = %77
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sle i32 %101, 8
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i16, i16* @IsByValue, align 2
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* @MustFree, align 2
  %107 = zext i16 %106 to i32
  %108 = or i32 %105, %107
  %109 = load i16*, i16** %15, align 8
  %110 = load i16, i16* %109, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %111, %108
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %109, align 2
  br label %125

114:                                              ; preds = %98
  %115 = load i16, i16* @IsSimpleRef, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* @MustFree, align 2
  %118 = zext i16 %117 to i32
  %119 = or i32 %116, %118
  %120 = load i16*, i16** %15, align 8
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = or i32 %122, %119
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %120, align 2
  br label %125

125:                                              ; preds = %114, %103
  br label %143

126:                                              ; preds = %77
  %127 = load i32*, i32** %18, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i16*, i16** %14, align 8
  %133 = load i16*, i16** %15, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  %136 = call i32 @get_param_info(i32* %127, %struct.TYPE_8__* %129, i32 %130, i32 %131, i16* %132, i16* %133, i8* %134, %struct.TYPE_8__** %135)
  store i32 %136, i32* %19, align 4
  br label %143

137:                                              ; preds = %77
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %137, %126, %125, %88
  %144 = load i32*, i32** %18, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %146 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %144, %struct.TYPE_9__* %145)
  %147 = load i32*, i32** %18, align 8
  %148 = call i32 @ITypeInfo_Release(i32* %147)
  br label %171

149:                                              ; preds = %8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call zeroext i8 @get_base_type(i32 %152)
  %154 = load i8*, i8** %16, align 8
  store i8 %153, i8* %154, align 1
  %155 = icmp ne i8 %153, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load i16, i16* @IsBasetype, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16*, i16** %15, align 8
  %160 = load i16, i16* %159, align 2
  %161 = zext i16 %160 to i32
  %162 = or i32 %161, %158
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* %159, align 2
  br label %170

164:                                              ; preds = %149
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %169, i32* %9, align 4
  br label %173

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170, %143, %57, %46, %35
  %172 = load i32, i32* %19, align 4
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %171, %164, %65
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @get_param_pointer_info(i32*, i32, i32, i32, i16*, i16*, i8*, %struct.TYPE_8__**) #1

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local zeroext i8 @get_base_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
