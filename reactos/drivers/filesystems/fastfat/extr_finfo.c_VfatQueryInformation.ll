; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatQueryInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatQueryInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__*, %struct.TYPE_29__*, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_26__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32 }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"VfatQueryInformation is called for '%s'\0A\00", align 1
@FileMaximumInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@FileInformationClassNames = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"IRP_MJ_QUERY_INFORMATION without FCB!\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FCB_IS_PAGE_FILE = common dso_local global i32 0, align 4
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@STATUS_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @VfatQueryInformation(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %9 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %11 = call i32 @ASSERT(%struct.TYPE_32__* %10)
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %24, %struct.TYPE_33__** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FileMaximumInformation, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %36

30:                                               ; preds = %1
  %31 = load i8**, i8*** @FileInformationClassNames, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %29 ], [ %35, %30 ]
  %38 = call i32 @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %40 = icmp eq %struct.TYPE_33__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %48, i64* %2, align 8
  br label %199

49:                                               ; preds = %36
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FCB_IS_PAGE_FILE, align 4
  %67 = call i32 @BooleanFlagOn(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %49
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %76 = call i32 @BooleanFlagOn(i32 %74, i32 %75)
  %77 = call i32 @ExAcquireResourceSharedLite(i32* %71, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %81 = call i64 @VfatMarkIrpContextForQueue(%struct.TYPE_32__* %80)
  store i64 %81, i64* %2, align 8
  br label %199

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %49
  %84 = load i32, i32* %4, align 4
  switch i32 %84, label %155 [
    i32 128, label %85
    i32 129, label %89
    i32 134, label %99
    i32 131, label %109
    i32 132, label %119
    i32 130, label %126
    i32 136, label %133
    i32 133, label %143
    i32 135, label %153
  ]

85:                                               ; preds = %83
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @VfatGetStandardInformation(%struct.TYPE_33__* %86, i32 %87, i64* %8)
  store i64 %88, i64* %6, align 8
  br label %157

89:                                               ; preds = %83
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @VfatGetPositionInformation(%struct.TYPE_25__* %92, %struct.TYPE_33__* %93, i32 %96, i32 %97, i64* %8)
  store i64 %98, i64* %6, align 8
  br label %157

99:                                               ; preds = %83
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @VfatGetBasicInformation(%struct.TYPE_25__* %102, %struct.TYPE_33__* %103, i32 %106, i32 %107, i64* %8)
  store i64 %108, i64* %6, align 8
  br label %157

109:                                              ; preds = %83
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %111, align 8
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @VfatGetNameInformation(%struct.TYPE_25__* %112, %struct.TYPE_33__* %113, i32 %116, i32 %117, i64* %8)
  store i64 %118, i64* %6, align 8
  br label %157

119:                                              ; preds = %83
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @VfatGetInternalInformation(%struct.TYPE_33__* %120, i32 %123, i32 %124, i64* %8)
  store i64 %125, i64* %6, align 8
  br label %157

126:                                              ; preds = %83
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i64 @VfatGetNetworkOpenInformation(%struct.TYPE_33__* %127, i32 %130, i32 %131, i64* %8)
  store i64 %132, i64* %6, align 8
  br label %157

133:                                              ; preds = %83
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i64 @VfatGetAllInformation(%struct.TYPE_25__* %136, %struct.TYPE_33__* %137, i32 %140, i32 %141, i64* %8)
  store i64 %142, i64* %6, align 8
  br label %157

143:                                              ; preds = %83
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %145, align 8
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i64 @VfatGetEaInformation(%struct.TYPE_25__* %146, %struct.TYPE_33__* %147, i32 %150, i32 %151, i64* %8)
  store i64 %152, i64* %6, align 8
  br label %157

153:                                              ; preds = %83
  %154 = load i64, i64* @STATUS_NOT_IMPLEMENTED, align 8
  store i64 %154, i64* %6, align 8
  br label %157

155:                                              ; preds = %83
  %156 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %155, %153, %143, %133, %126, %119, %109, %99, %89, %85
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @FCB_IS_PAGE_FILE, align 4
  %162 = call i32 @BooleanFlagOn(i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %157
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 0
  %167 = call i32 @ExReleaseResourceLite(i32* %166)
  br label %168

168:                                              ; preds = %164, %157
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @NT_SUCCESS(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %172, %168
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = sub nsw i64 %183, %184
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  store i64 %185, i64* %190, align 8
  br label %197

191:                                              ; preds = %172
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %176
  %198 = load i64, i64* %6, align 8
  store i64 %198, i64* %2, align 8
  br label %199

199:                                              ; preds = %197, %79, %41
  %200 = load i64, i64* %2, align 8
  ret i64 %200
}

declare dso_local i32 @ASSERT(%struct.TYPE_32__*) #1

declare dso_local i32 @DPRINT(i8*, i8*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i64 @VfatMarkIrpContextForQueue(%struct.TYPE_32__*) #1

declare dso_local i64 @VfatGetStandardInformation(%struct.TYPE_33__*, i32, i64*) #1

declare dso_local i64 @VfatGetPositionInformation(%struct.TYPE_25__*, %struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i64 @VfatGetBasicInformation(%struct.TYPE_25__*, %struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i64 @VfatGetNameInformation(%struct.TYPE_25__*, %struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i64 @VfatGetInternalInformation(%struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i64 @VfatGetNetworkOpenInformation(%struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i64 @VfatGetAllInformation(%struct.TYPE_25__*, %struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i64 @VfatGetEaInformation(%struct.TYPE_25__*, %struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
