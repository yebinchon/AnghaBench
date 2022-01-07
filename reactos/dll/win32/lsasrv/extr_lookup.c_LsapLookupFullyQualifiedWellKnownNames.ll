; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupFullyQualifiedWellKnownNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupFullyQualifiedWellKnownNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i64, i32* }
%struct.TYPE_16__ = type { i64, i32*, %struct.TYPE_15__, %struct.TYPE_15__ }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SidTypeUnknown = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Mapping name: %wZ\\%wZ\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Found it! (%wZ\\%wZ)\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@SidTypeDomain = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, %struct.TYPE_17__*, i32*)* @LsapLookupFullyQualifiedWellKnownNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsapLookupFullyQualifiedWellKnownNames(i64 %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_17__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = call i64 @RTL_CONSTANT_STRING(i8* bitcast ([1 x i32]* @.str to i8*))
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %22, i32* %19, align 4
  store i64 0, i64* %18, align 8
  br label %23

23:                                               ; preds = %186, %6
  %24 = load i64, i64* %18, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %189

27:                                               ; preds = %23
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %29 = load i64, i64* %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SidTypeUnknown, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %186

36:                                               ; preds = %27
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = load i64, i64* %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %186

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = load i64, i64* %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i64 %46
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 %49
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %47, %struct.TYPE_15__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = load i64, i64* %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %53
  %55 = ptrtoint %struct.TYPE_15__* %54 to i32
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = load i64, i64* %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %57
  %59 = ptrtoint %struct.TYPE_15__* %58 to i32
  %60 = call %struct.TYPE_16__* @LsapLookupFullyQualifiedWellKnownName(i32 %55, i32 %59)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %14, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %62 = icmp ne %struct.TYPE_16__* %61, null
  br i1 %62, label %63, label %185

63:                                               ; preds = %44
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %65, %struct.TYPE_15__* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32* @LsapCopySid(i32* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %81 = load i64, i64* %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  store i32* %79, i32** %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %63
  %91 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %91, i32* %19, align 4
  br label %190

92:                                               ; preds = %63
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  store i32 -1, i32* %96, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = load i64, i64* %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SidTypeDomain, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %92
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @LsapAddDomainToDomainsList(i32 %107, %struct.TYPE_15__* %109, i32* %112, i64* %17)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %106
  br label %190

118:                                              ; preds = %106
  %119 = load i64, i64* %17, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %122 = load i64, i64* %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 8
  br label %181

125:                                              ; preds = %92
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = call %struct.TYPE_16__* @LsapLookupIsolatedWellKnownName(%struct.TYPE_15__* %127)
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %15, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %130 = icmp ne %struct.TYPE_16__* %129, null
  br i1 %130, label %131, label %150

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @LsapAddDomainToDomainsList(i32 %132, %struct.TYPE_15__* %134, i32* %137, i64* %17)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = call i32 @NT_SUCCESS(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %131
  br label %190

143:                                              ; preds = %131
  %144 = load i64, i64* %17, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %147 = load i64, i64* %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 8
  br label %180

150:                                              ; preds = %125
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32* @CreateDomainSidFromAccountSid(i32* %153)
  store i32* %154, i32** %16, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %158, i32* %19, align 4
  br label %190

159:                                              ; preds = %150
  %160 = load i32, i32* %10, align 4
  %161 = load i32*, i32** %16, align 8
  %162 = call i32 @LsapAddDomainToDomainsList(i32 %160, %struct.TYPE_15__* %13, i32* %161, i64* %17)
  store i32 %162, i32* %19, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @MIDL_user_free(i32* %166)
  store i32* null, i32** %16, align 8
  br label %168

168:                                              ; preds = %165, %159
  %169 = load i32, i32* %19, align 4
  %170 = call i32 @NT_SUCCESS(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %190

173:                                              ; preds = %168
  %174 = load i64, i64* %17, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %177 = load i64, i64* %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 8
  br label %180

180:                                              ; preds = %173, %143
  br label %181

181:                                              ; preds = %180, %118
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  br label %186

185:                                              ; preds = %44
  br label %186

186:                                              ; preds = %185, %181, %43, %35
  %187 = load i64, i64* %18, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %18, align 8
  br label %23

189:                                              ; preds = %23
  br label %190

190:                                              ; preds = %189, %172, %157, %142, %117, %90
  %191 = load i32, i32* %19, align 4
  ret i32 %191
}

declare dso_local i64 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @LsapLookupFullyQualifiedWellKnownName(i32, i32) #1

declare dso_local i32* @LsapCopySid(i32*) #1

declare dso_local i32 @LsapAddDomainToDomainsList(i32, %struct.TYPE_15__*, i32*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local %struct.TYPE_16__* @LsapLookupIsolatedWellKnownName(%struct.TYPE_15__*) #1

declare dso_local i32* @CreateDomainSidFromAccountSid(i32*) #1

declare dso_local i32 @MIDL_user_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
