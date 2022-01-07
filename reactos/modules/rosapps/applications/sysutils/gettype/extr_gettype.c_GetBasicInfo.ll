; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/gettype/extr_gettype.c_GetBasicInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/gettype/extr_gettype.c_GetBasicInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Microsoft Windows NT 4.0 \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Microsoft Windows 2000 \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Microsoft Windows XP \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Microsoft Windows Server 2003 \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Microsoft Windows Vista \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Microsoft Windows \00", align 1
@VER_SUITE_BLADE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Web Edition\00", align 1
@VER_SUITE_DATACENTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Datacenter\00", align 1
@VER_SUITE_ENTERPRISE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"Enterprise\00", align 1
@VER_SUITE_EMBEDDEDNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Embedded\00", align 1
@VER_SUITE_PERSONAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"Home Edition\00", align 1
@VER_SUITE_SMALLBUSINESS_RESTRICTED = common dso_local global i32 0, align 4
@VER_SUITE_SMALLBUSINESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Small Bussiness Edition\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%d.%d Build %d %s\00", align 1
@VER_NT_DOMAIN_CONTROLLER = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"Domain Controller\00", align 1
@VER_NT_SERVER = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@VER_NT_WORKSTATION = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"Workgroup\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Not Installed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBasicInfo(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1024, i32* %14, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @GetComputerName(i32* %15, i32* %14)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @_T(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @_tcscpy(i32* %22, i32 %23)
  br label %75

25:                                               ; preds = %6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @_tcscpy(i32* %36, i32 %37)
  br label %59

39:                                               ; preds = %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @_T(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @_tcscpy(i32* %45, i32 %46)
  br label %58

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @_tcscpy(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %35
  br label %74

60:                                               ; preds = %25
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 @_tcscpy(i32* %66, i32 %67)
  br label %73

69:                                               ; preds = %60
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 @_tcscpy(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %21
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @VER_SUITE_BLADE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %85 = call i32 @_tcscat(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VER_SUITE_DATACENTER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %96 = call i32 @_tcscat(i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VER_SUITE_ENTERPRISE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %107 = call i32 @_tcscat(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @VER_SUITE_EMBEDDEDNT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %118 = call i32 @_tcscat(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @VER_SUITE_PERSONAL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %129 = call i32 @_tcscat(i32* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @VER_SUITE_SMALLBUSINESS_RESTRICTED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @VER_SUITE_SMALLBUSINESS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %147 = call i32 @_tcscat(i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %137, %130
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @_stprintf(i32* %149, i32 %150, i32 %153, i32 %156, i32 %160, i32 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @VER_NT_DOMAIN_CONTROLLER, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %148
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %173 = call i32 @_tcscpy(i32* %171, i32 %172)
  br label %196

174:                                              ; preds = %148
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @VER_NT_SERVER, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %183 = call i32 @_tcscpy(i32* %181, i32 %182)
  br label %195

184:                                              ; preds = %174
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @VER_NT_WORKSTATION, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32*, i32** %12, align 8
  %192 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %193 = call i32 @_tcscpy(i32* %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %184
  br label %195

195:                                              ; preds = %194, %180
  br label %196

196:                                              ; preds = %195, %170
  %197 = load i32*, i32** %13, align 8
  %198 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %199 = call i32 @_tcscat(i32* %197, i32 %198)
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @GetComputerName(i32*, i32*) #1

declare dso_local i32 @_tcscpy(i32*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @_tcscat(i32*, i32) #1

declare dso_local i32 @_stprintf(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
