; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_privileges.c_LsarpLookupPrivilegeDisplayName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_privileges.c_LsarpLookupPrivilegeDisplayName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [58 x i8] c"LsarpLookupPrivilegeDisplayName(%p 0x%04hu 0x%04hu %p %p)\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 108, i32 115, i32 97, i32 115, i32 114, i32 118, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@WellKnownPrivileges = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Index: %u\0A\00", align 1
@IDS_CREATE_TOKEN_PRIVILEGE = common dso_local global i64 0, align 8
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_NO_SUCH_PRIVILEGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LsarpLookupPrivilegeDisplayName(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_7__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %16, i32 %17, i32 %18, %struct.TYPE_7__** %19, i32* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %5
  %32 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %32, i32* %6, align 4
  br label %182

33:                                               ; preds = %26
  %34 = call i32 @GetModuleHandleW(i8* bitcast ([11 x i32]* @.str.1 to i8*))
  store i32 %34, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %177, %33
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @WellKnownPrivileges, align 8
  %38 = call i64 @ARRAYSIZE(%struct.TYPE_8__* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %180

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @WellKnownPrivileges, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @_wcsicmp(i32* %43, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %176

51:                                               ; preds = %40
  %52 = load i64, i64* %14, align 8
  %53 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %13, align 4
  %55 = load i64, i64* @IDS_CREATE_TOKEN_PRIVILEGE, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @LsapGetResourceStringLengthEx(i32 %54, i64 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %51
  %63 = call i8* @MIDL_user_allocate(i32 4)
  %64 = bitcast i8* %63 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %12, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = icmp eq %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %68, i32* %6, align 4
  br label %182

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @MIDL_user_allocate(i32 %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %69
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = call i32 @MIDL_user_free(%struct.TYPE_7__* %94)
  %96 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %96, i32* %6, align 4
  br label %182

97:                                               ; preds = %69
  %98 = load i32, i32* %13, align 4
  %99 = load i64, i64* @IDS_CREATE_TOKEN_PRIVILEGE, align 8
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @LsapLoadStringEx(i32 %98, i64 %101, i32 %102, i32* %105, i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %174

112:                                              ; preds = %51
  %113 = load i32, i32* %13, align 4
  %114 = load i64, i64* @IDS_CREATE_TOKEN_PRIVILEGE, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @LsapGetResourceStringLengthEx(i32 %113, i64 %116, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %171

121:                                              ; preds = %112
  %122 = call i8* @MIDL_user_allocate(i32 4)
  %123 = bitcast i8* %122 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %12, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %125 = icmp eq %struct.TYPE_7__* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %127, i32* %6, align 4
  br label %182

128:                                              ; preds = %121
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @MIDL_user_allocate(i32 %143)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %128
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = call i32 @MIDL_user_free(%struct.TYPE_7__* %153)
  %155 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %155, i32* %6, align 4
  br label %182

156:                                              ; preds = %128
  %157 = load i32, i32* %13, align 4
  %158 = load i64, i64* @IDS_CREATE_TOKEN_PRIVILEGE, align 8
  %159 = load i64, i64* %14, align 8
  %160 = add i64 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @LsapLoadStringEx(i32 %157, i64 %160, i32 %161, i32* %164, i32 %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %168 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %168, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32*, i32** %11, align 8
  store i32 %169, i32* %170, align 4
  br label %173

171:                                              ; preds = %112
  %172 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %172, i32* %6, align 4
  br label %182

173:                                              ; preds = %156
  br label %174

174:                                              ; preds = %173, %97
  %175 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %175, i32* %6, align 4
  br label %182

176:                                              ; preds = %40
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %14, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %14, align 8
  br label %35

180:                                              ; preds = %35
  %181 = load i32, i32* @STATUS_NO_SUCH_PRIVILEGE, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %174, %171, %152, %126, %93, %67, %31
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GetModuleHandleW(i8*) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @_wcsicmp(i32*, i32) #1

declare dso_local i32 @LsapGetResourceStringLengthEx(i32, i64, i32) #1

declare dso_local i8* @MIDL_user_allocate(i32) #1

declare dso_local i32 @MIDL_user_free(%struct.TYPE_7__*) #1

declare dso_local i32 @LsapLoadStringEx(i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
