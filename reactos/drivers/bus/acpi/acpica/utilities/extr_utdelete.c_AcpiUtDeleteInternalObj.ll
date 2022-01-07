; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utdelete.c_AcpiUtDeleteInternalObj.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utdelete.c_AcpiUtDeleteInternalObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32 (%struct.TYPE_30__*, i32, i32, i32*)*, %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_26__ = type { %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_40__ = type { i32*, %struct.TYPE_30__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32* }
%struct.TYPE_37__ = type { %struct.TYPE_30__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i8*, i32 }
%struct.TYPE_34__ = type { i8* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_32__ = type { i8* }

@UtDeleteInternalObj = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"**** String %p, ptr %p\0A\00", align 1
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"**** Buffer %p, ptr %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" **** Package of count %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"***** Mutex %p, OS Mutex %p\0A\00", align 1
@AcpiGbl_GlobalLockMutex = common dso_local global %struct.TYPE_30__* null, align 8
@AcpiGbl_GlobalLockSemaphore = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"***** Event %p, OS Semaphore %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"***** Method %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"***** Region %p\0A\00", align 1
@ANOBJ_TEMPORARY = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Circular region list in address handler object %p\00", align 1
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"***** Buffer Field %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"***** Bank Field %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Deleting Object Subptr %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%s: Deleting Object %p [%s]\0A\00", align 1
@ACPI_GET_FUNCTION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*)* @AcpiUtDeleteInternalObj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiUtDeleteInternalObj(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_30__**, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  store i8* null, i8** %3, align 8
  %9 = load i32, i32* @UtDeleteInternalObj, align 4
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %struct.TYPE_30__* %10)
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %13 = icmp ne %struct.TYPE_30__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @return_VOID, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %340 [
    i32 129, label %21
    i32 139, label %43
    i32 132, label %65
    i32 137, label %76
    i32 131, label %89
    i32 128, label %89
    i32 133, label %106
    i32 136, label %134
    i32 134, label %151
    i32 130, label %189
    i32 138, label %314
    i32 135, label %327
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 %28)
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %37, %21
  br label %341

43:                                               ; preds = %16
  %44 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 10
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %59, %43
  br label %341

65:                                               ; preds = %16
  %66 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ACPI_DEBUG_PRINT(i32 %70)
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %3, align 8
  br label %341

76:                                               ; preds = %16
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @AcpiEvDeleteGpeBlock(i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %16, %16, %88
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  store %struct.TYPE_30__* %93, %struct.TYPE_30__** %4, align 8
  br label %94

94:                                               ; preds = %97, %89
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %96 = icmp ne %struct.TYPE_30__* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %100, align 8
  store %struct.TYPE_30__* %101, %struct.TYPE_30__** %6, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %103 = call i32 @AcpiUtRemoveReference(%struct.TYPE_30__* %102)
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_30__* %104, %struct.TYPE_30__** %4, align 8
  br label %94

105:                                              ; preds = %94
  br label %341

106:                                              ; preds = %16
  %107 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ACPI_DEBUG_PRINT(i32 %112)
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** @AcpiGbl_GlobalLockMutex, align 8
  %116 = icmp eq %struct.TYPE_30__* %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = load i32*, i32** @AcpiGbl_GlobalLockSemaphore, align 8
  %119 = call i32 @AcpiOsDeleteSemaphore(i32* %118)
  store i32* null, i32** @AcpiGbl_GlobalLockSemaphore, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @AcpiOsDeleteMutex(i32 %123)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** @AcpiGbl_GlobalLockMutex, align 8
  br label %133

125:                                              ; preds = %106
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %127 = call i32 @AcpiExUnlinkMutex(%struct.TYPE_30__* %126)
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @AcpiOsDeleteMutex(i32 %131)
  br label %133

133:                                              ; preds = %125, %117
  br label %341

134:                                              ; preds = %16
  %135 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = ptrtoint i32* %140 to i32
  %142 = call i32 @ACPI_DEBUG_PRINT(i32 %141)
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @AcpiOsDeleteSemaphore(i32* %146)
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  br label %341

151:                                              ; preds = %16
  %152 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %154 = ptrtoint %struct.TYPE_30__* %153 to i32
  %155 = call i32 @ACPI_DEBUG_PRINT(i32 %154)
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %158, align 8
  %160 = icmp ne %struct.TYPE_30__* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %151
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @AcpiOsDeleteMutex(i32 %168)
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %172, align 8
  %174 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_30__* %173)
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i32 0, i32 1
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %177, align 8
  br label %178

178:                                              ; preds = %161, %151
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %186, i32 0, i32 0
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %184, %178
  br label %341

189:                                              ; preds = %16
  %190 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %192 = ptrtoint %struct.TYPE_30__* %191 to i32
  %193 = call i32 @ACPI_DEBUG_PRINT(i32 %192)
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ANOBJ_TEMPORARY, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %189
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %210, align 8
  %212 = call i32 @AcpiUtRemoveAddressRange(i32 %207, %struct.TYPE_31__* %211)
  br label %213

213:                                              ; preds = %203, %189
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %215 = call %struct.TYPE_30__* @AcpiNsGetSecondaryObject(%struct.TYPE_30__* %214)
  store %struct.TYPE_30__* %215, %struct.TYPE_30__** %5, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %217 = icmp ne %struct.TYPE_30__* %216, null
  br i1 %217, label %218, label %301

218:                                              ; preds = %213
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %221, align 8
  store %struct.TYPE_30__* %222, %struct.TYPE_30__** %4, align 8
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %224 = icmp ne %struct.TYPE_30__* %223, null
  br i1 %224, label %225, label %298

225:                                              ; preds = %218
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  store %struct.TYPE_30__* %229, %struct.TYPE_30__** %6, align 8
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_30__* %230, %struct.TYPE_30__** %7, align 8
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 3
  store %struct.TYPE_30__** %233, %struct.TYPE_30__*** %8, align 8
  br label %234

234:                                              ; preds = %264, %225
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %236 = icmp ne %struct.TYPE_30__* %235, null
  br i1 %236, label %237, label %265

237:                                              ; preds = %234
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %240 = icmp eq %struct.TYPE_30__* %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %244, align 8
  %246 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* %245, %struct.TYPE_30__** %246, align 8
  br label %265

247:                                              ; preds = %237
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  store %struct.TYPE_30__** %250, %struct.TYPE_30__*** %8, align 8
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %253, align 8
  store %struct.TYPE_30__* %254, %struct.TYPE_30__** %6, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %257 = icmp eq %struct.TYPE_30__* %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %247
  %259 = load i32, i32* @AE_INFO, align 4
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %261 = ptrtoint %struct.TYPE_30__* %260 to i32
  %262 = call i32 @ACPI_ERROR(i32 %261)
  %263 = load i32, i32* @return_VOID, align 4
  br label %264

264:                                              ; preds = %258, %247
  br label %234

265:                                              ; preds = %241, %234
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %295

273:                                              ; preds = %265
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 2
  %277 = load i32 (%struct.TYPE_30__*, i32, i32, i32*)*, i32 (%struct.TYPE_30__*, i32, i32, i32*)** %276, align 8
  %278 = icmp ne i32 (%struct.TYPE_30__*, i32, i32, i32*)* %277, null
  br i1 %278, label %279, label %294

279:                                              ; preds = %273
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 2
  %283 = load i32 (%struct.TYPE_30__*, i32, i32, i32*)*, i32 (%struct.TYPE_30__*, i32, i32, i32*)** %282, align 8
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %285 = load i32, i32* @ACPI_REGION_DEACTIVATE, align 4
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 0
  %293 = call i32 %283(%struct.TYPE_30__* %284, i32 %285, i32 %289, i32* %292)
  br label %294

294:                                              ; preds = %279, %273
  br label %295

295:                                              ; preds = %294, %265
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %297 = call i32 @AcpiUtRemoveReference(%struct.TYPE_30__* %296)
  br label %298

298:                                              ; preds = %295, %218
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %300 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_30__* %299)
  br label %301

301:                                              ; preds = %298, %213
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %301
  %308 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @ACPI_FREE(i8* %311)
  br label %313

313:                                              ; preds = %307, %301
  br label %341

314:                                              ; preds = %16
  %315 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %317 = ptrtoint %struct.TYPE_30__* %316 to i32
  %318 = call i32 @ACPI_DEBUG_PRINT(i32 %317)
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %320 = call %struct.TYPE_30__* @AcpiNsGetSecondaryObject(%struct.TYPE_30__* %319)
  store %struct.TYPE_30__* %320, %struct.TYPE_30__** %5, align 8
  %321 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %322 = icmp ne %struct.TYPE_30__* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %314
  %324 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %325 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_30__* %324)
  br label %326

326:                                              ; preds = %323, %314
  br label %341

327:                                              ; preds = %16
  %328 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %330 = ptrtoint %struct.TYPE_30__* %329 to i32
  %331 = call i32 @ACPI_DEBUG_PRINT(i32 %330)
  %332 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %333 = call %struct.TYPE_30__* @AcpiNsGetSecondaryObject(%struct.TYPE_30__* %332)
  store %struct.TYPE_30__* %333, %struct.TYPE_30__** %5, align 8
  %334 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %335 = icmp ne %struct.TYPE_30__* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %327
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %338 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_30__* %337)
  br label %339

339:                                              ; preds = %336, %327
  br label %341

340:                                              ; preds = %16
  br label %341

341:                                              ; preds = %340, %339, %326, %313, %188, %134, %133, %105, %65, %64, %42
  %342 = load i8*, i8** %3, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %344, label %351

344:                                              ; preds = %341
  %345 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %346 = load i8*, i8** %3, align 8
  %347 = ptrtoint i8* %346 to i32
  %348 = call i32 @ACPI_DEBUG_PRINT(i32 %347)
  %349 = load i8*, i8** %3, align 8
  %350 = call i32 @ACPI_FREE(i8* %349)
  br label %351

351:                                              ; preds = %344, %341
  %352 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %353 = load i32, i32* @ACPI_GET_FUNCTION_NAME, align 4
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %356 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_30__* %355)
  %357 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %356)
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %359 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_30__* %358)
  %360 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiEvDeleteGpeBlock(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_30__*) #1

declare dso_local i32 @AcpiOsDeleteSemaphore(i32*) #1

declare dso_local i32 @AcpiOsDeleteMutex(i32) #1

declare dso_local i32 @AcpiExUnlinkMutex(%struct.TYPE_30__*) #1

declare dso_local i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_30__*) #1

declare dso_local i32 @AcpiUtRemoveAddressRange(i32, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_30__* @AcpiNsGetSecondaryObject(%struct.TYPE_30__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
