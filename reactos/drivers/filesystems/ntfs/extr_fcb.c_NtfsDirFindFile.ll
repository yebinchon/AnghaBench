; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsDirFindFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsDirFindFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"NtfsDirFindFile(%p, %p, %S, %s, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i32] [i32 36, i32 68, i32 65, i32 84, i32 65, i32 0], align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Will now look for file '%wZ' with stream '%S'\0A\00", align 1
@FRH_DIRECTORY = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@AttributeData = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i32*, i32, %struct.TYPE_26__**)* @NtfsDirFindFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsDirFindFile(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32* %2, i32 %3, %struct.TYPE_26__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__, align 4
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_26__** %4, %struct.TYPE_26__*** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %28 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %29 = call i32 @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %21, %struct.TYPE_26__* %22, i32* %23, i8* %27, %struct.TYPE_26__** %28)
  %30 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %30, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @RtlInitUnicodeString(%struct.TYPE_24__* %14, i32* %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @wcsrchr(i32* %36, i32 58)
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %20, align 4
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i64 @_wcsicmp(i32* %53, i8* bitcast ([6 x i32]* @.str.3 to i8*))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %40
  %57 = load i32*, i32** %17, align 8
  store i32* %57, i32** %18, align 8
  %58 = load i32, i32* @UNICODE_NULL, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32* @wcsrchr(i32* %61, i32 58)
  store i32* %62, i32** %17, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %20, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  br label %81

77:                                               ; preds = %56
  %78 = load i32*, i32** %18, align 8
  store i32* %78, i32** %17, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 58, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %65
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32*, i32** %17, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %17, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_24__* %14, i32* %85)
  br label %87

87:                                               ; preds = %82, %5
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @NtfsLookupFileAt(%struct.TYPE_25__* %88, %struct.TYPE_24__* %14, i32 %89, %struct.TYPE_27__** %15, i32* %16, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @NT_SUCCESS(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %6, align 4
  br label %152

97:                                               ; preds = %87
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %20, align 4
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FRH_DIRECTORY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load i32*, i32** %17, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %117 = call i32 @ExFreeToNPagedLookasideList(i32* %115, %struct.TYPE_27__* %116)
  %118 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %118, i32* %6, align 4
  br label %152

119:                                              ; preds = %110, %103
  %120 = load i32*, i32** %17, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %125 = load i32, i32* @AttributeData, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @wcslen(i32* %127)
  %129 = call i32 @FindAttribute(%struct.TYPE_25__* %123, %struct.TYPE_27__* %124, i32 %125, i32* %126, i32 %128, i32* %19, i32* null)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @NT_SUCCESS(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* @STATUS_OBJECT_NAME_NOT_FOUND, align 4
  store i32 %134, i32* %6, align 4
  br label %152

135:                                              ; preds = %122
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @ReleaseAttributeContext(i32 %136)
  br label %138

138:                                              ; preds = %135, %119
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = load i32*, i32** %17, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %146 = call i32 @NtfsMakeFCBFromDirEntry(%struct.TYPE_25__* %140, %struct.TYPE_26__* %141, %struct.TYPE_24__* %14, i32* %142, %struct.TYPE_27__* %143, i32 %144, %struct.TYPE_26__** %145)
  store i32 %146, i32* %12, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %150 = call i32 @ExFreeToNPagedLookasideList(i32* %148, %struct.TYPE_27__* %149)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %139, %133, %113, %95
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*, i8*, %struct.TYPE_26__**) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_24__*, i32*) #1

declare dso_local i32* @wcsrchr(i32*, i32) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @NtfsLookupFileAt(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, %struct.TYPE_27__**, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_25__*, %struct.TYPE_27__*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @ReleaseAttributeContext(i32) #1

declare dso_local i32 @NtfsMakeFCBFromDirEntry(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_24__*, i32*, %struct.TYPE_27__*, i32, %struct.TYPE_26__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
