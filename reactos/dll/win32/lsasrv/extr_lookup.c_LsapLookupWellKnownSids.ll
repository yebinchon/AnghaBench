; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupWellKnownSids.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupWellKnownSids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i32*, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SidTypeUnknown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Mapping SID: %S\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Mapped to: %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32*)* @LsapLookupWellKnownSids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsapLookupWellKnownSids(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %14, align 4
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %152, %4
  %17 = load i64, i64* %13, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %155

22:                                               ; preds = %16
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SidTypeUnknown, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %152

31:                                               ; preds = %22
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ConvertSidToStringSidW(i32 %38, %struct.TYPE_19__** %11)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = call i32 @LocalFree(%struct.TYPE_19__* %42)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_16__* @LsapLookupWellKnownSid(i32 %50)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %9, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = icmp ne %struct.TYPE_16__* %52, null
  br i1 %53, label %54, label %151

54:                                               ; preds = %31
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  store i32 %69, i32* %74, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @MIDL_user_allocate(i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  store i32* %88, i32** %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %54
  %102 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %102, i32* %14, align 4
  br label %156

103:                                              ; preds = %54
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @RtlCopyMemory(i32* %109, i32 %113, i32 %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = call %struct.TYPE_16__* @LsapLookupIsolatedWellKnownName(i32* %120)
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %10, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = icmp ne %struct.TYPE_16__* %122, null
  br i1 %123, label %124, label %142

124:                                              ; preds = %103
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @LsapAddDomainToDomainsList(i32 %125, %struct.TYPE_14__* %127, i32 %130, i64* %12)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @NT_SUCCESS(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %124
  br label %156

136:                                              ; preds = %124
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i64 %137, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %103
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %146)
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %142, %31
  br label %152

152:                                              ; preds = %151, %30
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %13, align 8
  br label %16

155:                                              ; preds = %16
  br label %156

156:                                              ; preds = %155, %135, %101
  %157 = load i32, i32* %14, align 4
  ret i32 %157
}

declare dso_local i32 @ConvertSidToStringSidW(i32, %struct.TYPE_19__**) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_16__* @LsapLookupWellKnownSid(i32) #1

declare dso_local i32* @MIDL_user_allocate(i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @LsapLookupIsolatedWellKnownName(i32*) #1

declare dso_local i32 @LsapAddDomainToDomainsList(i32, %struct.TYPE_14__*, i32, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
