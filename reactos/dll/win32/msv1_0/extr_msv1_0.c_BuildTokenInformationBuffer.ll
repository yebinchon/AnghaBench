; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msv1_0/extr_msv1_0.c_BuildTokenInformationBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msv1_0/extr_msv1_0.c_BuildTokenInformationBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_30__*)*, %struct.TYPE_30__* (i32)* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_28__, %struct.TYPE_23__, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_22__, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_30__* }
%struct.TYPE_23__ = type { %struct.TYPE_30__* }
%struct.TYPE_22__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_30__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@DispatchTable = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate the local buffer!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BuildTokenUser() failed (Status 0x%08lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"BuildTokenPrimaryGroup() failed (Status 0x%08lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"BuildTokenGroups() failed (Status 0x%08lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__**, i64, %struct.TYPE_29__*, i32)* @BuildTokenInformationBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildTokenInformationBuffer(%struct.TYPE_30__** %0, i64 %1, %struct.TYPE_29__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_30__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_30__** %0, %struct.TYPE_30__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_30__* (i32)*, %struct.TYPE_30__* (i32)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 1), align 8
  %14 = call %struct.TYPE_30__* %13(i32 4)
  store %struct.TYPE_30__* %14, %struct.TYPE_30__** %9, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %16 = icmp eq %struct.TYPE_30__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %19, i32* %11, align 4
  br label %88

20:                                               ; preds = %4
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 5
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BuildTokenUser(%struct.TYPE_22__* %38, i32 %40, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @NT_SUCCESS(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %20
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %88

52:                                               ; preds = %20
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 2
  %55 = load i64, i64* %6, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BuildTokenPrimaryGroup(%struct.TYPE_23__* %54, i32 %56, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @NT_SUCCESS(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %88

68:                                               ; preds = %52
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 3
  %71 = load i64, i64* %6, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @BuildTokenGroups(%struct.TYPE_30__** %70, i32 %72, i32 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @NT_SUCCESS(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %88

85:                                               ; preds = %68
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %87 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  store %struct.TYPE_30__* %86, %struct.TYPE_30__** %87, align 8
  br label %88

88:                                               ; preds = %85, %82, %65, %49, %17
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @NT_SUCCESS(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %188, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %94 = icmp ne %struct.TYPE_30__* %93, null
  br i1 %94, label %95, label %187

95:                                               ; preds = %92
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %99, align 8
  %101 = icmp ne %struct.TYPE_30__* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 0), align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %107, align 8
  %109 = call i32 %103(%struct.TYPE_30__* %108)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %112, align 8
  %114 = icmp ne %struct.TYPE_30__* %113, null
  br i1 %114, label %115, label %157

115:                                              ; preds = %110
  store i64 0, i64* %10, align 8
  br label %116

116:                                              ; preds = %148, %115
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %117, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %116
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %132, align 8
  %134 = icmp ne %struct.TYPE_30__* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %124
  %136 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 0), align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %144, align 8
  %146 = call i32 %136(%struct.TYPE_30__* %145)
  br label %147

147:                                              ; preds = %135, %124
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %116

151:                                              ; preds = %116
  %152 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 0), align 8
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %154, align 8
  %156 = call i32 %152(%struct.TYPE_30__* %155)
  br label %157

157:                                              ; preds = %151, %110
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %160, align 8
  %162 = icmp ne %struct.TYPE_30__* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 0), align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %167, align 8
  %169 = call i32 %164(%struct.TYPE_30__* %168)
  br label %170

170:                                              ; preds = %163, %157
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %173, align 8
  %175 = icmp ne %struct.TYPE_30__* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 0), align 8
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %180, align 8
  %182 = call i32 %177(%struct.TYPE_30__* %181)
  br label %183

183:                                              ; preds = %176, %170
  %184 = load i32 (%struct.TYPE_30__*)*, i32 (%struct.TYPE_30__*)** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @DispatchTable, i32 0, i32 0), align 8
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %186 = call i32 %184(%struct.TYPE_30__* %185)
  br label %187

187:                                              ; preds = %183, %92
  br label %188

188:                                              ; preds = %187, %88
  %189 = load i32, i32* %11, align 4
  ret i32 %189
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @BuildTokenUser(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @BuildTokenPrimaryGroup(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @BuildTokenGroups(%struct.TYPE_30__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
