; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_dump_TypeDesc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_dump_TypeDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__ }

@VT_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reserved | \00", align 1
@VT_BYREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ref to \00", align 1
@VT_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"array of \00", align 1
@VT_VECTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"vector of \00", align 1
@VT_TYPEMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"VT_UI1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"VT_I2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"VT_I4\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"VT_R4\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"VT_R8\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"VT_BOOL\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"VT_ERROR\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"VT_CY\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"VT_DATE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"VT_BSTR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"VT_UNKNOWN\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"VT_DISPATCH\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"VT_I1\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"VT_UI2\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VT_UI4\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"VT_INT\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"VT_UINT\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"VT_VARIANT\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"VT_VOID\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"VT_HRESULT\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"VT_USERDEFINED ref = %x\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"VT_LPSTR\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"VT_LPWSTR\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ptr to \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"safearray of \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"%d dim array of \00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"unknown(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @dump_TypeDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_TypeDesc(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VT_RESERVED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @strlen(i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VT_BYREF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @strlen(i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VT_ARRAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @strlen(i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VT_VECTOR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @strlen(i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VT_TYPEMASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %176 [
    i32 135, label %66
    i32 144, label %69
    i32 143, label %72
    i32 138, label %75
    i32 137, label %78
    i32 153, label %81
    i32 147, label %84
    i32 150, label %87
    i32 149, label %90
    i32 152, label %93
    i32 131, label %96
    i32 148, label %99
    i32 145, label %102
    i32 134, label %105
    i32 133, label %108
    i32 142, label %111
    i32 132, label %114
    i32 129, label %117
    i32 128, label %120
    i32 146, label %123
    i32 130, label %126
    i32 141, label %133
    i32 140, label %136
    i32 139, label %139
    i32 136, label %148
    i32 151, label %157
  ]

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %184

69:                                               ; preds = %60
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %184

72:                                               ; preds = %60
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %184

75:                                               ; preds = %60
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %184

78:                                               ; preds = %60
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %184

81:                                               ; preds = %60
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %184

84:                                               ; preds = %60
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %184

87:                                               ; preds = %60
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %184

90:                                               ; preds = %60
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %184

93:                                               ; preds = %60
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %184

96:                                               ; preds = %60
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %184

99:                                               ; preds = %60
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %184

102:                                              ; preds = %60
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %184

105:                                              ; preds = %60
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %184

108:                                              ; preds = %60
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %184

111:                                              ; preds = %60
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %184

114:                                              ; preds = %60
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  br label %184

117:                                              ; preds = %60
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %184

120:                                              ; preds = %60
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  br label %184

123:                                              ; preds = %60
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %184

126:                                              ; preds = %60
  %127 = load i8*, i8** %4, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %131)
  br label %184

133:                                              ; preds = %60
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %184

136:                                              ; preds = %60
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 (i8*, i8*, ...) @sprintf(i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  br label %184

139:                                              ; preds = %60
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 7
  call void @dump_TypeDesc(%struct.TYPE_7__* %145, i8* %147)
  br label %184

148:                                              ; preds = %60
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 (i8*, i8*, ...) @sprintf(i8* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 13
  call void @dump_TypeDesc(%struct.TYPE_7__* %154, i8* %156)
  br label %184

157:                                              ; preds = %60
  %158 = load i8*, i8** %4, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 %164)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i8*, i8** %4, align 8
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @strlen(i8* %172)
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  call void @dump_TypeDesc(%struct.TYPE_7__* %170, i8* %175)
  br label %184

176:                                              ; preds = %60
  %177 = load i8*, i8** %4, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @VT_TYPEMASK, align 4
  %182 = and i32 %180, %181
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %176, %157, %148, %139, %136, %133, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
